@'

\# Phishing Email Analysis Report

\*\*Task:\*\* Advanced Phishing Email Analysis  

\*\*Date:\*\* (8-8-2025)  

\*\*Author:\*\* \[Saharsh hegde



---



\## 1. Executive Summary

A crafted phishing email pretending to be PayPal was analyzed. Multiple indicators (sender-domain trick, mismatched reply-to, suspicious URL, urgent language, and URL reputation flags) indicate a \*\*High\*\* phishing risk. This attack is designed for credential theft.



---



\## 2. Sample Email (raw)

(See `phishing\_email.txt`)



---



\## 3. Header Analysis Summary

\- Displayed From: `security-alert@paypa1-support.com` (paypa\*\*1\*\* instead of paypal)

\- Reply-To / Return-Path: `securelogin.cn` (unrelated domain)

\- Originating IP: 203.113.23.55 (external ISP, not PayPal)

\- SPF/DKIM/DMARC: (paste analyzer results here — likely FAIL or NONE)



\*\*Conclusion:\*\* Header indicates the mail was injected from an external server; sender is spoofed.



---



\## 4. URL \& Domain Analysis

\- URL: `http://paypal-verification-security-check.com/login`

\- VirusTotal: (paste results) — flagged by multiple engines

\- WHOIS: Domain registered recently (short age), uses suspicious registrar/country

\- DNS: Resolves to IP not associated with PayPal.



\*\*Conclusion:\*\* URL and domain are maliciously crafted and should not be visited.



---



\## 5. Language \& Social-Engineering Traits

\- Generic greeting (“Dear Customer”), urgent deadline (6 hours), threat of suspension — classic phishing pressure techniques.

\- Visual trick: domain text tries to imitate PayPal.



---



\## 6. Risk Scoring (custom)

\- Sender domain mismatch: 3

\- Reply-To mismatch: 3

\- URL flagged (VT): 4

\- Urgency: 2

\- Branding trick: 2  

\*\*Total = 14 → High Risk\*\*



---



\## 7. Mitigation \& Recommendations

1\. Do not click links or reply.

2\. Report message to your security team / ISP / phishing-reporting service.

3\. Block the domain and IP at perimeter/firewall.

4\. Educate users about domain spoofing and how to hover links.

5\. If any user clicked, enforce password resets and scan for compromises.



---



\## 8. Files in this folder

\- `phishing\_email.txt` — raw sample

\- `email\_header.txt` — crafted header

\- `header\_analysis.txt` — manual + tool notes

\- `url\_analysis.txt` — domain and VT notes

\- `screenshots/` — visual proof (email and header screenshots)



---

'@ | Set-Content phishing\_report.md -Encoding UTF8



