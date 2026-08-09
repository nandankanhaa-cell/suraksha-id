-- ============================================================================
-- SURAKSHA ID - SUPABASE DATABASE INITIALIZATION & SEED SCRIPT
-- Copy and paste this into your Supabase Dashboard -> SQL Editor -> Run
-- Project URL: https://anckphlkdgigukaqpczn.supabase.co
-- ============================================================================

-- 1. DROP EXISTING TABLES IF ANY
DROP TABLE IF EXISTS audit_logs CASCADE;
DROP TABLE IF EXISTS authorized_records CASCADE;
DROP TABLE IF EXISTS officers CASCADE;

-- 2. CREATE AUTHORIZED IDENTITY RECORDS TABLE
CREATE TABLE authorized_records (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    record_code TEXT UNIQUE NOT NULL,
    qr_data TEXT UNIQUE NOT NULL,
    doc_type TEXT NOT NULL,
    doc_number TEXT NOT NULL,
    full_name TEXT NOT NULL,
    dob TEXT NOT NULL,
    address TEXT NOT NULL,
    photo TEXT,
    verification_id TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 3. CREATE AUDIT LOGS TABLE (STORES SCANNED/UPLOADED QR DATA & IMAGES)
CREATE TABLE audit_logs (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    ref_no TEXT UNIQUE NOT NULL,
    verification_id TEXT NOT NULL,
    scanned_qr_payload TEXT,
    uploaded_qr_image TEXT,
    citizen_name TEXT NOT NULL,
    doc_type TEXT NOT NULL,
    status TEXT NOT NULL, -- 'VERIFIED' or 'FAILED'
    officer_id TEXT NOT NULL,
    duty_location TEXT NOT NULL,
    gps_coordinates TEXT NOT NULL,
    geocoded_address TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 4. CREATE OFFICERS TABLE
CREATE TABLE officers (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    officer_id TEXT UNIQUE NOT NULL,
    full_name TEXT NOT NULL,
    badge_number TEXT NOT NULL,
    role TEXT NOT NULL,
    department TEXT NOT NULL,
    duty_location TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 5. ENABLE ROW LEVEL SECURITY & ALLOW PUBLIC READ/WRITE FOR PROTOTYPE
ALTER TABLE authorized_records ENABLE ROW LEVEL SECURITY;
ALTER TABLE audit_logs ENABLE ROW LEVEL SECURITY;
ALTER TABLE officers ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read on authorized_records" ON authorized_records FOR SELECT USING (true);
CREATE POLICY "Allow public insert on authorized_records" ON authorized_records FOR INSERT WITH CHECK (true);

CREATE POLICY "Allow public read on audit_logs" ON audit_logs FOR SELECT USING (true);
CREATE POLICY "Allow public insert on audit_logs" ON audit_logs FOR INSERT WITH CHECK (true);

CREATE POLICY "Allow public read on officers" ON officers FOR SELECT USING (true);
CREATE POLICY "Allow public insert on officers" ON officers FOR INSERT WITH CHECK (true);

-- 6. SEED ALL 10 AUTHORIZED ORIGINAL RECORDS INTO SUPABASE
INSERT INTO authorized_records (record_code, qr_data, doc_type, doc_number, full_name, dob, address, photo, verification_id) VALUES
('REC-001', 'GOV_ID_AADHAAR_784922019941_VERIFIED', 'Aadhaar Card', '7849 2201 9941', 'Rajesh Kumar Verma', '14-08-1991', 'H.No 42, Block C, Sector 14, Rohini, New Delhi - 110085', 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&auto=format&fit=crop&q=80', 'VER-GOV-2026-001'),
('REC-002', 'GOV_ID_PASSPORT_Z8904112_VERIFIED', 'Passport', 'Z8904112', 'Sunita Sharma', '22-11-1988', 'Flat 302, Green Valley Apts, Vasant Kunj, New Delhi - 110070', 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=300&auto=format&fit=crop&q=80', 'VER-GOV-2026-002'),
('REC-003', 'GOV_ID_DL_DL042019889412_VERIFIED', 'Driving Licence', 'DL-042019889412', 'Vikram Singh Rathore', '03-05-1985', 'Plot 12, Civil Lines, Jaipur, Rajasthan - 302006', 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=300&auto=format&fit=crop&q=80', 'VER-GOV-2026-003'),
('REC-004', 'GOV_ID_OFFICER_GOVIND4491MHA_VERIFIED', 'Government Officer ID', 'GOV-IND-4491-MHA', 'Dr. Alok Nath', '20-03-1976', 'Quarter 18, Pandara Road, New Delhi - 110003', 'https://images.unsplash.com/photo-1560250097-0b93528c311a?w=300&auto=format&fit=crop&q=80', 'VER-GOV-2026-004'),
('REC-005', 'GOV_ID_PAN_ABCDE1234F_VERIFIED', 'PAN Card', 'ABCDE1234F', 'Amit Patel', '19-01-1982', '102, Shanti Nagar, Ellisbridge, Ahmedabad, Gujarat - 380006', 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=300&auto=format&fit=crop&q=80', 'VER-GOV-2026-005'),
('REC-006', 'GOV_ID_VOTER_WB04091884920_VERIFIED', 'Voter ID Card', 'WB/04/091/884920', 'Ananya Sen', '09-07-1997', '58/2, Ballygunge Circular Road, Kolkata, West Bengal - 700019', 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=300&auto=format&fit=crop&q=80', 'VER-GOV-2026-006'),
('REC-007', 'GOV_ID_AADHAAR_991244108823_VERIFIED', 'Aadhaar Card', '9912 4410 8823', 'Priya Nambiar', '11-12-1994', 'House 14, MG Road, Ernakulam, Kochi, Kerala - 682016', 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=300&auto=format&fit=crop&q=80', 'VER-GOV-2026-007'),
('REC-008', 'GOV_ID_PASSPORT_K4490192_VERIFIED', 'Passport', 'K4490192', 'Manish Malhotra', '30-09-1980', 'B-14, Bandra West, Mumbai, Maharashtra - 400050', 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=300&auto=format&fit=crop&q=80', 'VER-GOV-2026-008'),
('REC-009', 'GOV_ID_DL_TS092020118942_VERIFIED', 'Driving Licence', 'TS-092020118942', 'Kavita Reddy', '17-04-1992', 'H.No 8-2-293, Jubilee Hills, Hyderabad, Telangana - 500033', 'https://images.unsplash.com/photo-1517841905240-472988babdf9?w=300&auto=format&fit=crop&q=80', 'VER-GOV-2026-009'),
('REC-010', 'GOV_ID_OFFICER_GOVMOD9912DL_VERIFIED', 'Government Officer ID', 'GOV-MOD-9912-DL', 'Col. Gurpreet Singh', '05-01-1974', 'Defense Enclave, Cantonment, Chandigarh - 160002', 'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?w=300&auto=format&fit=crop&q=80', 'VER-GOV-2026-010');
