@echo off
REM =========================================
REM Advanced Local Network Scan - Elevate Labs Internship
REM =========================================

REM Step 1: Detect Local Network Range
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr "IPv4"') do set ip=%%A
set ip=%ip:~1%
for /f "tokens=1-3 delims=." %%a in ("%ip%") do set baseIP=%%a.%%b.%%c
set range=%baseIP%.0/24
echo [*] Detected Local Network Range: %range%

REM Step 2: Create Results Folder
if not exist results mkdir results

REM Step 3: Run Advanced Nmap Scan
echo [*] Running Advanced Nmap Scan...
nmap -sS -sV -O --top-ports 100 --open %range% -oN results\scan_results.txt -oX results\scan_results.xml

REM Step 4: Analyze Risks from Scan
echo [*] Analyzing Risks...
> results\security_risks.txt (
    for /f "tokens=1,3" %%a in ('findstr /R "open" results\scan_results.txt') do (
        if "%%a"=="22/tcp" echo [!] Port 22 (SSH) - Possible brute force attacks if weak password.
        if "%%a"=="80/tcp" echo [!] Port 80 (HTTP) - Possible website vulnerabilities.
        if "%%a"=="445/tcp" echo [!] Port 445 (SMB) - Vulnerable to ransomware & EternalBlue exploit.
    )
)

echo [*] Scan Complete! Results saved in 'results' folder.
pause
