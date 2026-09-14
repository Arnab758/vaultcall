# VaultCall: 3-Minute Hackathon Video Demo Script

This script is timed for a high-impact **3-minute walkthrough** to wow judges Ren Teng (CEO, AI Rudder), Bianca Cheng (CMRO), Yechang Hu (PM, CALL-E), and Betty Paul (Head of GTM).

---

### [0:00 - 0:40] The Problem: The $55B Nightmare of BEC Wire Fraud
* **Screen**: Show the VaultCall Dashboard at [http://localhost:3000](http://localhost:3000), pointing out the headline and metrics ($1.15M in protected exposure).
* **Spoken**:  
  *"According to the FBI IC3, Business Email Compromise is the single most damaging cybercrime category in history, with over $55 Billion lost. In enterprises, attackers compromise a vendor's email, alter the bank account number on an open invoice, and submit it for payment.*  
  *SOX compliance rules strictly state: NEVER verify bank changes by replying to an email. AP teams MUST make an out-of-band phone call. But AP specialists process hundreds of invoices weekly, and waiting on hold for hours means teams cut corners—leading to catastrophic wire theft.*  
  *This is why we built **VaultCall**—the autonomous out-of-band BEC wire defense protocol powered by **CALL-E**."*

---

### [0:40 - 1:30] How It Works: The Airgap Gate & CALL-E Challenge
* **Screen**: Click on **CyberShield Technologies Inc.** ($240,000 clean confirmation).
* **Spoken**:  
  *"When a bank modification arrives, VaultCall activates an **Airgap Policy Gate**. It strictly refuses to call any phone number listed in the incoming email or invoice signature, because that's where attackers put their burner numbers. Instead, it looks up the verified corporate PBX from a hardened directory.*  
  *VaultCall compiles a cryptographic NATO challenge token—here, `Echo-Sierra-482`—and dispatches a CALL-E agent to dial the CFO.*  
  *Let's look at the Audio Transcript Reel: CALL-E introduces the security reference, asks the CFO for the last four digits of their Tax EIN, and reads back the exact invoice numbers and dollar amount.*  
  *Sarah Chen, the CFO, verbally confirms her identity, provides Tax ID `4891`, and authorizes the change."*

---

### [1:30 - 2:15] Intercepting Real-World Fraud Live ($785,000 Saved!)
* **Screen**: Close modal and click on **Apex Global Logistics LLC** ($785,000 fraud intercepted).
* **Spoken**:  
  *"Now let's see what happens during an active cyberattack. An attacker sent an urgent invoice request claiming wire details moved to Biscayne Bay Credit Union in Miami, providing a fake burner phone: `+1-305-555-0144`.*  
  *Notice our Airgap Scope Matrix: VaultCall detected the mismatch and flagged the burner phone as STRIPPED BY AIRGAP. It dialed the real Chicago PBX.*  
  *In the transcript reel, when CALL-E asks about the Florida account, Controller Michael Vance immediately shouts: 'ABSOLUTELY NOT! That is fraudulent! DO NOT send that money! Our billing staff had their email compromised yesterday.'*  
  *Our Evidence-Linked Scorer cross-examines the callee's words against the extraction. Because fraud was stated, VaultCall immediately triggers an emergency account freeze, halts the wire release in the ERP, and saves $785,000 in capital!"*

---

### [2:15 - 2:45] Gatekeeper Fail-Closed & Cryptographic Certificates
* **Screen**: Click **Meridian Health** ($125,000), then click **View Certificate** on CyberShield.
* **Spoken**:  
  *"Next, look at Meridian Health. When a receptionist or IVR answers saying the officer is out of office, VaultCall enforces a strict fail-closed policy: voicemail is NOT an authorized reach, so it routes to a human escalation card.*  
  *When a verification is successfully confirmed—like CyberShield—VaultCall mints an irrevocable **Certificate of Voice Verification**, stamped with a SHA-256 cryptographic audit fingerprint and an ERP Release Token for SOX 404 compliance.*  
  *And across every screen, we maintain a global **Emergency Kill Switch** that instantly freezes all outbound dialing if an anomaly is detected."*

---

### [2:45 - 3:00] Conclusion & Fast-Path for Judges
* **Screen**: Back to the main dashboard overview, showing tests passing in terminal (`npm test`).
* **Spoken**:  
  *"VaultCall is completely runnable today. For hackathon judges, our test suite runs 100% offline with full fixture replay—no API keys or credits needed to evaluate.*  
  *With CALL-E, enterprise treasury finally has an autonomous, fraud-proof voice defense that stops wire theft in its tracks. Thank you!"*
