# CALL-E Hackathon Flagship: VaultCall

> **"CALL-E: Your Code Is Calling" Hackathon Submission**  
> **Prize Track Target**: Most Practical Use Case ($4,000) / Most Innovative Use Case ($3,000)  
> **Repository Path**: `apps/typescript/vaultcall`  
> **Submission PR Target**: [CALLE-AI/awesome-phone-call-agents](https://github.com/CALLE-AI/awesome-phone-call-agents) (`apps/typescript/vaultcall`)

---

## What is VaultCall?

VaultCall is an autonomous out-of-band BEC (Business Email Compromise) wire defense and vendor bank-change verification protocol. It protects enterprise AP & Treasury from the FBI's #1 reported cybercrime threat ($55B+ loss category) by deploying **CALL-E** to conduct cryptographic voice challenge-response authentications with corporate officers before ERP payments can be released.

### Key Innovations:
1. **Airgap Policy Gate**: Detects and intercepts burner phone numbers embedded in spoofed invoices; strictly routes calls to verified corporate PBX registry numbers.
2. **Challenge-Response Security Token**: Generates NATO phonetic challenge tokens (e.g. `Echo-Sierra-482`) and verifies the last 4 digits of Federal Tax IDs.
3. **Evidence-Linked Scorer**: Verbatim callee utterances are cross-examined against extracted claims. Unevidenced claims strike through and fail closed.
4. **Fast-Path for Judges**: Zero API keys required to test. Runs on deterministic fixture replay by default, with an opt-in live CALL-E calling toggle.
5. **Irrevocable Certificate of Voice Verification**: Generates SHA-256 fingerprinted audit receipts for SOX 404 compliance.

---

## Quick Start (For Judges & Evaluators)

```bash
cd apps/typescript/vaultcall
cp .env.example .env
npm install
npm run db:seed
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to access the interactive executive console.

### Running Offline Checks:
```bash
npm test
npm run typecheck
```

---

## Hackathon Submission Checklist

1. [x] **Working Codebase**: Complete Next.js 14 App Router application with TailwindCSS, Lucide icons, and Vitest test suite.
2. [x] **CALL-E Integration**: Fully compiled prompt, E.164 phone formatting, and strict JSON result extraction schema.
3. [x] **Fast-Path Benchmarks**: Seeded test cases for CyberShield Tech (Valid $240k), Apex Global Logistics (Fraud $785k), and Meridian Health (Gatekeeper $125k).
4. [ ] **Demo Video**: Record a 3-minute screen recording using the script provided in `DEMO_SCRIPT.md`.
5. [ ] **Pull Request**: Submit PR to `CALLE-AI/awesome-phone-call-agents` under `apps/typescript/vaultcall` and update the main README table.
6. [ ] **Devpost Submission**: Submit URL to your PR and demo video to [call-e.devpost.com](https://call-e.devpost.com/).
