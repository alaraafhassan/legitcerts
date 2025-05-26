# 🎓 LegitCerts — NFC-Based Blockchain Certificate System

## Project Description

**LegitCerts** is a decentralized application (dApp) built on Ethereum that issues, verifies, and revokes certificates using secure NFC tag IDs as unique identifiers. The system ensures authenticity, immutability, and transparency of academic or professional credentials by leveraging blockchain and IPFS (InterPlanetary File System).

Each certificate is linked to a unique NFC chip and stored immutably on-chain, with full metadata (like student details and course info) stored off-chain on IPFS. This eliminates forgery, reduces administrative overhead, and builds trust among institutions, employers, and students.

The smart contract handles core certificate functionalities including issuance, verification, and revocation, while maintaining a verifiable on-chain history.

---

## Project Vision

Our vision is to revolutionize the way educational and professional certificates are issued and validated by combining NFC technology with blockchain. With LegitCerts, we aim to:

- 🛡️ Prevent certificate forgery and tampering with cryptographic verification  
- 🔍 Allow real-time, NFC-enabled public verification of credentials  
- 📂 Eliminate paperwork through secure digital certificates  
- 🧾 Build a trusted and verifiable public history for issued certificates  
- 🌍 Enable institutions to issue blockchain-secured credentials globally  

We envision a future where anyone can validate a certificate by simply scanning an NFC tag, gaining instant access to its blockchain-verified record — no middlemen, no risk of fakes.

---

## 🔑 Key Features

### 1. Certificate Issuance  
Admins can issue certificates using a unique NFC-based Certificate ID. Metadata like student name, course name, issue date, and an IPFS hash is recorded, and the certificate is permanently stored on-chain.

### 2. Ownership Verification  
Certificates are bound to a specific Certificate ID and cannot be manipulated or re-issued. Only the admin can issue or revoke certificates.

### 3. Status Tracking  
Certificates can have a validity status (`Valid`, `Revoked`). The status can be checked via public functions and updated only by the admin.

### 4. Immutable History  
Every certificate issuance and revocation is logged immutably, creating a secure and auditable certificate lifecycle.

### 5. IPFS Integration  
Certificate metadata is stored on IPFS for cost-effective, decentralized access while keeping sensitive data off-chain.

---

## 📦 Future Scope

### Enhanced Integration  
- Integration with educational platforms and LMS  
- NFC scanning apps for real-time verification via Android/iOS  
- API bridges to automate issuance with existing systems  

### Advanced Features  
- Verifiable credentials with DID (Decentralized Identity)  
- Certificate NFTs for easy sharing on LinkedIn, GitHub, etc.  
- On-chain token rewards for top performers or verified graduates  

### Ecosystem Expansion  
- Consortium support for universities and certifying bodies  
- Zero-knowledge proofs for private metadata verification  
- Cross-institutional credential recognition and analytics  

### Technical Improvements  
- Support for Layer 2 solutions (Optimism, zkSync)  
- Upgradeable contracts using OpenZeppelin proxy patterns  
- Role-based access control (RBAC) and admin multisig wallets  

---

## 🧪 How It Works

1. **Admin issues a certificate** with a unique NFC-based ID.  
2. **Metadata is pinned to IPFS** (student name, course, etc.).  
3. **The contract stores the issuance on-chain**, referencing the IPFS hash.  
4. **Anyone can verify** a certificate by scanning the NFC and querying the contract.  
5. **Admin can revoke certificates** in case of errors or disciplinary action.  

---

## 📁 Smart Contract Functions

```solidity
function issueCertificate(string memory certificateId, string memory studentName, string memory courseName, string memory issueDate, string memory ipfsHash) public onlyAdmin;
function revokeCertificate(string memory certificateId) public onlyAdmin;
function verifyCertificate(string memory certificateId) public view returns (string memory, string memory, string memory, string memory, bool);
```

---

## 📍 Contract Details

**Contract Address**: `0x73c9Dc75abea8554146023fb44b1C36584F93aC6`  
**Network**: Core Blockchain Testnet2 (chain id : 1114(0x45a)) 
**txn hash**: `0xe813525e54ca236dd0ecd787d4e0ab15ff3e1bf2f35d00b876c8d93c2ef2c021`
**Deployment Date**: `2025-05-26`

---

## 📸 Screenshots

![image](https://github.com/user-attachments/assets/c2e6201c-d152-4bc3-b767-7b84a9ebd3a4)
![image](https://github.com/user-attachments/assets/126c7c03-b945-4e59-8300-320d994e1a84)


---

## 👤 Author

**Alaraaf Hassan**  

---

> _“Trust, once built on the blockchain, never needs to be questioned again.”_
