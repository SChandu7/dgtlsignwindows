##                                         📖 Overview
The **Digital Signature via Passkey** project is a secure system that allows users to **digitally sign documents** using **passkeys** for authentication.  
It ensures document integrity, prevents tampering, and provides a **reliable verification system** for both personal and organizational use.

---

## 🎯 Problem Statement
Traditional paper-based signatures and standard digital signatures face several challenges:  
- Easy to **forge or tamper** with paper signatures.  
- Existing digital signature systems often rely on **passwords** which can be stolen or hacked.  
- Lack of **easy verification** for recipients of documents.  

**Our solution** uses **passkey-based authentication** to digitally sign documents, ensuring:  
- Document integrity and authenticity.  
- Secure access without passwords.  
- Quick verification for recipients.

---

## ⚙️ Tech Stack

| Component | Technology Used |
|-----------|----------------|
| Frontend | Flutter / Web |
| Backend | Django (REST API) |
| Database | PostgreSQL |
| Authentication | Passkey-based (FIDO2/WebAuthn) |
| Hosting | AWS  |
| APIs | REST APIs |
| Encryption | RSA / SHA-256 for document hashing |

---

## 💡 Key Features

### User Features
- Secure **registration** with passkey authentication.  
- Upload documents to sign digitally.  
- Generate **digital signatures** using passkeys.  
- Share signed documents securely.  
- Verify signed documents to ensure authenticity.

### Admin Features 
- Manage users and system access.  
- View signed document logs and audit trails.  
- Monitor system security and authentication attempts.

---

## 🧩 System Architecture
```
User App / Web Interface
          │
          ▼
Passkey Authentication (FIDO2/WebAuthn)
          │
          ▼
Backend (Django/Node.js)
          │
          ▼
Database (MySQL/PostgreSQL)
          │
          ▼
AWS Server / Cloud Storage for Documents
```



---

## 🧠 Working Procedure

### 1. User Registration
- User registers and sets up **passkey authentication**.  
- Passkeys are stored securely in the backend for verification.

### 2. Document Upload
- User selects a document to sign.  
- Document hash is generated using SHA-256 or similar algorithm.

### 3. Digital Signature Generation
- User signs the document with their **passkey**.  
- The signature is stored along with the document in the database or secure cloud storage.

### 4. Verification
- Recipient or user can verify the document by checking:  
  - Document hash matches.  
  - Signature is valid and corresponds to the user’s passkey.  
- Verification is instant and secure.

---



## 🧾 Example Data Format
|Document ID	| User |	File Name |	Hash	| Signature |	Status|
|----------|----------|---------|---------|----------|--------|
D001 |	John Doe	| contract.pdf |	abc123def456|	sig_xyz789 |	Verified
D002	| Mary Jane	| invoice.pdf	| qwe789rty456	| sig_abc123	| Pending

---


## For Testing Of Application The website Reference Here

- https://temporaryproject1-71b94.web.app/
  
---

## 📸 Screenshots 

 <img width="1232" height="683" alt="image" src="https://github.com/user-attachments/assets/4379547e-4519-4a42-a8de-541cfe9aca6f" />


---



## 🚀 Future Enhancements

- Integration with blockchain for immutable document verification.
- Support multiple file formats (PDF, DOCX, images).
- Multi-user document signing workflows.
- Automated audit logs and tamper alerts.
- Mobile-friendly verification app.

---

## 👨‍💻 Contributors

| Name |	Role |	Description |
|---------|----------|----------|
S. Chandu	| Developer & Project Lead	|  Designed and implemented passkey-based digital signature system, integrated backend and frontend, and deployed on AWS.

---

## 📄 License
This project is licensed under the MIT License – see LICENSE file for details.

---

## Contact

If you have any questions or suggestions regarding the Coffee app, feel free to contact us at kingchandus143@gmail.com 

---



