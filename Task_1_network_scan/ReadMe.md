\# Task 1 – Local Network Scanning



\## 📌 Objective

Discover open ports on devices in the local network and assess network exposure.



\## 🛠️ Tools Used

\- \*\*Nmap\*\* (Network Mapper)

\- \*\*Windows Command Prompt\*\*

\- Optional: Wireshark for packet analysis



\## 📍 Steps Performed

1\. \*\*Identified local IP range\*\* using:

ipconfig





2\. \*\*Performed TCP SYN Scan\*\*:

nmap -sS 192.168.0.0/24 -oN scan\_results.txt



3\. \*\*Saved Results\*\* in `scan\_results.txt`.



4\. \*\*Analyzed Services\*\*:

\- Mapped open ports to common services.

\- Checked for potential vulnerabilities.



\## 📊 Summary of Findings

| IP Address     | Open Ports            | Services Detected         |

|----------------|----------------------|---------------------------|

| 192.168.0.1    | 22, 53, 80, 1900     | SSH, DNS, HTTP, UPNP       |

| 192.168.0.102  | 135, 139, 445        | MSRPC, NetBIOS, SMB        |



\## ⚠️ Security Risks Identified

\- Open \*\*SMB\*\* ports could expose file shares.

\- HTTP without HTTPS can lead to unencrypted data transfer.

\- UPNP exposure can be exploited for network attacks.



\## 📄 Files in This Folder

\- `scan\_results.txt` – Raw Nmap output.

\- `analysis\_report.md` – Detailed analysis of each finding.

\- `README.md` – Task summary.



---

\*\*Author:\*\* Saharsh Hegde

