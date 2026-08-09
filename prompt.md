# AI Prompt – SURAKSHA ID (Government Identity Verification System)

## Prompt

Design a modern Android application prototype named **SURAKSHA ID**.

The application is a secure Government Identity Verification System intended to be used **only by authorized government officials and licensed verification agencies**, such as:

* Police Officers
* Airport Security Officers
* Immigration Officers
* Hotel Reception (Licensed)
* Vehicle Rental Agencies (Licensed)
* Government Document Verification Centers

The purpose of the application is to verify the authenticity of government-issued identity documents, reduce identity fraud, assist lawful investigations, and maintain secure verification records.

\---

# Design Style

* Professional Government UI
* Blue and White Theme
* Government of India-inspired design
* Modern Material Design 3
* Rounded cards
* Clean typography
* High accessibility
* Minimalistic interface
* Premium Government appearance
* Light Mode

\---

# Splash Screen

Display:

**SURAKSHA ID**

**Secure Government Identity Verification System**

Large logo featuring:

**Government of India National Emblem (Lion Capital of Ashoka) integrated with a Security Shield** *(for prototype purposes)*

Loading animation

Footer:

**Authorized Government Access Only**

\---

# Login Screen

Fields

* Officer / License Holder ID
* Password
* Role (Dropdown)

Roles

* Police
* Airport Security
* Hotel
* Immigration
* Government Officer

Buttons

* Login
* Forgot Password
* Biometric Login

Warning

**Unauthorized access is prohibited.**

\---

# Dashboard

Display

* Welcome Officer
* Officer Name
* Officer ID
* Current Duty Location
* GPS Status
* Today's Verifications

Buttons

* Scan QR Code
* Verification History
* Search Person
* Alert List
* SOS
* Notifications
* Settings
* Logout

\---

# Current Location Card

Automatically detect the location where the authorized user is currently performing verification.

Examples

* Airport Terminal
* Hotel
* Government Office
* Police Checkpost
* Immigration Checkpoint
* International Border Checkpoint

Display

* Location Name
* GPS Verified
* Current Time

\---

# QR Scanner Screen

Open Camera

Large QR Scanner Frame

Instruction

**Scan Government QR Code**

Buttons

* Flash
* Gallery
* Manual Entry
* Cancel

\---

# Verification Processing

Animation

* Verifying Identity...
* Checking Digital Signature...
* Checking Government Database...
* Checking Watchlist...
* Checking Document Authenticity...
* Checking Duplicate Identity...

\---

# Verification Successful

Large Green Verified Badge

Display

* Photograph
* Full Name
* Gender
* Date of Birth
* Nationality
* Document Type
* Document Number
* Verification Status
* Digital Signature Verified
* Government Record Matched
* Verification Timestamp
* Current Verification Location
* Verified By
* Verification ID

Button

**Complete Verification**

After completion, the system securely creates an audit record containing:

* Verification Time
* Verification Location
* Authorized Officer ID
* Verification Status
* Audit Reference Number

\---

# Watchlist / Alert Screen

If the identity matches an authorized law enforcement watchlist, display:

Large Red Alert Screen

**⚠ PERSON REQUIRES IMMEDIATE REVIEW ⚠**

Display

* Photograph
* Official Name
* Alert Reference Number
* Alert Level
* Reason for Alert
* Current Verification Location

Buttons

* **Notify Control Room**
* **SOS**
* **Record Incident**
* **Cancel Verification**

### Important Behavior

**The application must NOT automatically notify the Control Room.**

The Control Room will only be contacted **after the authorized officer manually presses the "Notify Control Room" button.**

The SOS button also requires officer confirmation before sending emergency information.

Sensitive investigation details must only be visible to users with appropriate authorization.

\---

# Verification Failed

Display

Large Red Cross

Message

Verification Failed

Possible Reasons

* Invalid QR
* Document Tampered
* Digital Signature Failed
* QR Expired
* Database Error

Buttons

* Retry
* Manual Verification
* SOS

\---

# SOS Screen

Large Emergency Button

When pressed

Ask for confirmation

After confirmation

Send

* Officer ID
* Current GPS Location
* Time
* Verification Reference
* Emergency Type

Display

**Emergency Alert Successfully Sent**

\---

# Verification History

Search

Filters

* Date
* Location
* Officer
* Document Type
* Status

Each Card

* Photo
* Name
* Time
* Location
* Verified By
* Status

\---

# Search Person

Search using

* Aadhaar Number
* Passport Number
* Driving Licence Number
* PAN Number
* Voter ID Number
* Name
* Document Number

Only available to authorized officers with sufficient permissions.

\---

# Officer Profile

Display

* Officer Photo
* Name
* Department
* Badge Number
* Duty Location
* Role
* Device ID
* Last Login

Logout Button

\---

# Notifications

Examples

* Watchlist Updated
* Verification Completed
* System Updates
* Emergency Alerts
* Government Circulars

\---

# Settings

* Language
* Dark Mode
* Biometric Login
* Privacy
* Notification Settings
* Device Registration
* About

\---

# About

**SURAKSHA ID**

Secure Government Identity Verification System

Purpose

* Prevent identity fraud
* Support lawful identity verification
* Maintain secure audit records
* Assist authorized investigations
* Enhance national security

Version

**Government Prototype**

\---

# Security Features

* Role-Based Access Control (RBAC)
* Multi-Factor Authentication
* Biometric Login
* Device Registration
* QR Authentication
* Digital Signature Verification
* Encrypted Communication
* Audit Logging
* Session Timeout
* Tamper Detection
* Offline Verification Support
* Secure Cloud Synchronization

\---

# Icons

Use modern Government-themed icons.

Primary App Logo

**Government of India National Emblem (Lion Capital of Ashoka) integrated with a Security Shield** *(prototype concept only)*

Other Icons

* QR Scanner
* Verified Badge
* Police
* Airport
* Hotel
* Immigration
* Government Office
* Location Pin
* Fingerprint
* User Profile
* History
* Emergency
* Notification
* Settings
* Map

\---

# Color Palette

Primary

**#0B5ED7**

Secondary

**#FFFFFF**

Success

**#28A745**

Warning

**#FFC107**

Error

**#DC3545**

Background

**#F5F7FA**

\---

# Animations

* QR Scan Animation
* Verification Progress
* Success Animation
* Alert Animation
* SOS Pulse Animation
* Material Motion Transitions

\---

# Prototype Goal

The prototype should demonstrate a secure workflow in which an authorized officer or licensed verifier logs in, verifies a government-issued identity document by scanning its secure QR code, and creates a secure audit record containing the verification time and location. If the identity matches an authorized watchlist, the application **does not automatically notify authorities**. Instead, it displays a clear alert and provides the officer with options to manually notify the Control Room, send an SOS, or record the incident according to established procedures. The interface should emphasize security, accountability, privacy, and ease of use while presenting a professional Government of India–style design. The application is intended for use by police, airport security, immigration officials, hotels, and other licensed verification agencies.

