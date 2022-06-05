# CVE
## CVE-2022-30190
Alias: Follina
Microsoft Windows Support Diagnostic Tool (MSDT) Remote Code Execution Vulnerability.

- High severity

### Vulnerability removal guide
```PowerShell
git clone https://github.com/bbenouarets/script-utilities.git
cd script-utilities\Powershell\CVE
.\Remove-CVE-2022-30190.ps1
```

## CVE-2022-29072
Alias: -
7-Zip through 21.07 on Windows allows privilege escalation and command execution when a file with the .7z extension is dragged to the Help>Contents area. This is caused by misconfiguration of 7z.dll and a heap overflow. The command runs in a child process under the 7zFM.exe process.

- High severity

### Vulnerability removal guide
```PowerShell
git clone https://github.com/bbenouarets/script-utilities.git
cd script-utilities\Powershell\CVE
.\Remove-CVE-2022-29072.ps1
```