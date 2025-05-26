# 📄 NFC-Based Blockchain Certificate System

contract address- 0x5aef513f0be1e9e65f085cdc7e833c468265391f
A smart contract that issues, verifies, and revokes certificates based on unique NFC tags. Each certificate is stored immutably on the Ethereum blockchain with a reference to its detailed data on IPFS, ensuring authenticity, transparency, and security.

---

## 🚀 Features

- 🔐 **Admin-controlled issuance and revocation**
- 📦 **Immutable certificate storage on blockchain**
- 🔎 **Public verification using NFC-based Certificate ID**
- 🧾 **IPFS integration for off-chain certificate data**
- 🧠 **Smart structure for student and course details**

---

## 🛠️ How It Works

1. **Certificate Issuance (Admin Only):**
   - Admin issues a certificate using a unique Certificate ID (stored in an NFC chip).
   - Certificate data includes student name, course name, issue date, and IPFS hash.
   - Data is stored on-chain and a log is emitted.

2. **Verification (Public):**
   - Anyone can verify a certificate by scanning the NFC tag and calling `verifyCertificate()`.
   - The smart contract returns certificate metadata and its validity status.

3. **Revocation (Admin Only):**
   - Admin can revoke any issued certificate.
   - Revoked certificates will return `isValid = false`.

---

## 📁 Smart Contract Overview

```solidity
contract NFCCertification {
    function issueCertificate(...) public onlyAdmin;
    function revokeCertificate(string memory certificateId) public onlyAdmin;
    function verifyCertificate(string memory certificateId) public view returns (...);
}
```

---

## 📦 Tech Stack

- **Solidity 0.8.x**
- **Ethereum / EVM-compatible chains**
- **IPFS** for certificate storage
- **NFC** for physical certificate ID embedding
- Optional: Web3.js or Ethers.js frontend for interaction

---

## 🧪 Testing Instructions

1. Visit [Remix IDE](https://remix.ethereum.org)
2. Create a new file: `NFCCertification.sol`
3. Paste the smart contract code
4. Compile using Solidity 0.8.x
5. Deploy the contract using **JavaScript VM**
6. Test functions:
   - `issueCertificate()`
   - `verifyCertificate()`
   - `revokeCertificate()`

---

## 🧠 Future Improvements

- 🔄 Upgrade to ERC-721 NFT-based certificates
- ⏳ Add expiration dates
- 🏛️ Add institution details
- 📱 Build NFC scanning React/Flutter app for verification
- 🔐 Multi-admin or role-based access (using OpenZeppelin)

---

## 👤 Author

**Alaraaf Hassan**  
Founder & CEO – Medora  
Blockchain & AI Enthusiast

