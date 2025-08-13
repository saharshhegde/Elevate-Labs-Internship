\# Task 4 – Setup and Use a Firewall on Windows



\*\*Objective:\*\* Configure and test basic firewall rules to allow or block traffic.



\## Steps Performed:

1\. Opened \*\*Windows Defender Firewall with Advanced Security\*\*.

2\. Listed current inbound rules.

3\. Created a new inbound rule to \*\*block port 23 (Telnet)\*\*.

4\. Tested the rule – connection to port 23 was blocked.

5\. Allowed SSH (port 22) rule for testing purposes.

6\. Removed the block rule to restore the firewall to its original state.



\## Tools Used:

\- Windows Defender Firewall

\- Command Prompt (for verification)



\## Screenshots:

\- `screenshot\_block\_telnet.png` – Blocking port 23 (Telnet)

\- `screenshot\_allow\_ssh.png` – Allowing port 22 (SSH)



\## Summary:

A firewall filters incoming and outgoing traffic based on predefined security rules.  

Blocking unused ports (like Telnet) helps prevent unauthorized access, while allowing only required services (like SSH) ensures secure connectivity.



