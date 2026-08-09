# SURAKSHA ID 👮‍♂️🛡️

> **Official Secure Government Identity Verification & Geotagged Audit System**

SURAKSHA ID is a state-of-the-art, dual-pipeline identity verification application designed for law enforcement officers, airport security (BCAS), border patrol, immigration desks, and licensed verification agencies across India. 

It cross-verifies physical identity documents (Aadhaar Card, Passport, Driving Licence, Voter ID, PAN Card) using a **Dual-Analysis AI Verification Model** combining **Cryptographic QR Payload Cross-Matching** and **128D Facial Biometric Vector Embedding Comparison**.

---

## 🌐 Live Application Operating URL

Operate and test the live application directly in your browser:

👉 **Live Site URL**: [https://nandankanhaa-cell.github.io/suraksha-id/](https://nandankanhaa-cell.github.io/suraksha-id/)  
🐙 **GitHub Repository**: [https://github.com/nandankanhaa-cell/suraksha-id](https://github.com/nandankanhaa-cell/suraksha-id)

---

## 🔄 2-Stage Auto-Edge Adjusted Verification Workflow

1. **Step 1: Scan QR Code**:
   - Uses device native phone camera (`capture="environment"`) or image picker.
   - Decodes encrypted digital signature & extracts embedded QR Name (`Nandan Kumar S H`).
2. **Step 2: Whole Document Scan & Auto Edge Adjustment**:
   - Captures full hardcopy document photo.
   - Runs **Auto Edge Contour Detection**: Highlights boundary corners with green tracking nodes (`Auto Bounds 100% ✓`) and an adjustable margin framing slider (`edgeMarginPercent`).
   - Extracts printed OCR text.
3. **English-Only Comparison Engine**:
   - Strips non-ASCII Kannada characters before computing string similarity (`stripNonEnglishText()`), ensuring verification matching is performed strictly in English (`Nandan Kumar S H`).

---

## 🎨 Standardized Verified Card Layout (Top to Bottom)

1. 📷 **Person Picture**: Center-aligned portrait photo at top (`/nandan_kumar/face.png`).
2. 🆔 **Masked ID Number**: `2XXX XXXX 7201` (Only 1st digit and last 4 digits visible).
3. 👤 **Name**: `Nandan Kumar S H`.
4. 📅 **Date of Birth**: `16-10-2004`.
5. 👨 **Father Name (C/o)**: `Hemanth Kumar S`.
6. 📱 **Phone Number**: `+91 98XXX XX214`.
7. 📍 **Address**: `Sahaja Kuteera, Saraswathipura Shettikere Road, Ward no 5, Near SMS School Chikkanayakanahalli, VTC: Chiknayakanhalli, PO: Chikkanayakana Halli, District: Tumakuru, State: Karnataka - 572214`.
8. 🛡️ **At Last — Status Stamp**: **`VERIFIED ✓`** (Large emerald banner at bottom).

---

## 🔒 Access Gate Rules

- 🟢 **ACCESS GRANTED**: Requires **BOTH** `Pipeline 1 (QR Cross-Verification >= 85%)` **AND** `Pipeline 2 (Biometric Face Score >= 75%)` to pass cleanly.
- 🔴 **ACCESS DENIED**: Triggered if **EITHER** pipeline fails:
  - **Photo Swap / Impostor**: Fails Pipeline 2 (Biometric facial match < 75%).
  - **Tampered QR Code**: Fails Pipeline 1 (QR payload name does not match card printed text).
  - **Expired Digital Signature**: Fails Pipeline 1 signature validation.

---

## 📋 Primary Authoritative Dataset (Nandan Kumar S H)

```json
{
  "id": "REC-000",
  "docType": "Aadhaar Card",
  "docNumber": "2047 1018 7201",
  "enrolmentNo": "0000/00301/43379",
  "fullName": "Nandan Kumar S H (ನಂದನ್ ಕುಮಾರ್ ಎಸ್ ಹೆಚ್)",
  "printedNameOnCard": "Nandan Kumar S H",
  "qrDecodedName": "Nandan Kumar S H",
  "careOf": "C/o Hemanth Kumar S",
  "dob": "16-10-2004",
  "gender": "Male",
  "address": "Sahaja Kuteera, Saraswathipura Shettikere Road, Ward no 5, Near SMS School Chikkanayakanahalli, VTC: Chiknayakanhalli, PO: Chikkanayakana Halli, District: Tumakuru, State: Karnataka - 572214",
  "photo": "/nandan_kumar/face.png",
  "uploadedDocImage": "/nandan_kumar/full_doc.png"
}
```

---

## 🛠️ Technology Stack

- **Core Application**: HTML5, Vanilla JavaScript (ES6+), Tailwind CSS
- **Design & Typography**: Google Fonts (Inter & Outfit), Lucide Icons
- **Image & QR Engine**: OpenCV.js C++ WebAssembly, `window.BarcodeDetector`, `jsQR`
- **Mapping & Geofencing**: LeafletJS & OpenStreetMap API
- **String Matching Engine**: English-Only Levenshtein Distance & Token Similarity Algorithm
- **Biometric Model**: 128D Facial Feature ROI & Feature Vector Cosine Similarity
- **Database & Sync**: Supabase Client SDK

---

## 💻 Running Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/nandankanhaa-cell/suraksha-id.git
   cd suraksha-id
   ```

2. Direct Browser Open:
   Double-click [`index.html`](file:///d:/project/index.html) in Chrome, Edge, or Firefox.

3. Or run via Vite Dev Server:
   ```bash
   npm install
   npx vite
   ```
   Open `http://localhost:5173` in your browser.
