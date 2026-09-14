# Production Multi-Stage Dockerfile for Google Cloud Run
FROM node:20-alpine AS base
RUN apk add --no-cache libc6-compat
WORKDIR /app

# Stage 1: Install dependencies with workspace support
FROM base AS deps
COPY package.json package-lock.json* ./
COPY apps/typescript/vaultcall/package.json ./apps/typescript/vaultcall/
RUN npm install

# Stage 2: Build the Next.js standalone application
FROM base AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY --from=deps /app/apps/typescript/vaultcall/node_modules ./apps/typescript/vaultcall/node_modules
COPY . .

ENV NEXT_TELEMETRY_DISABLED=1
ENV NODE_ENV=production

RUN npm --prefix apps/typescript/vaultcall run build

# Stage 3: Production runner
FROM base AS runner
WORKDIR /app

ENV NODE_ENV=production
ENV NEXT_TELEMETRY_DISABLED=1
ENV PORT=8080
ENV HOSTNAME="0.0.0.0"

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs

# Copy Next.js standalone output and static assets
COPY --from=builder /app/apps/typescript/vaultcall/.next/standalone ./
COPY --from=builder --chown=nextjs:nodejs /app/apps/typescript/vaultcall/.next/static ./.next/static

USER nextjs

EXPOSE 8080

# Google Cloud Run dynamically passes $PORT
CMD ["node", "server.js"]
