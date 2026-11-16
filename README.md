\# Windows IT Troubleshooting Toolkit



\## Project Overview



The Windows IT Troubleshooting Toolkit is a beginner-friendly PowerShell project designed to collect system information and perform basic Windows troubleshooting tasks.



The toolkit helps identify network connectivity problems, check system performance information, and generate diagnostic reports.



\## Features



\- Display computer name and Windows version.

\- View IP addresses and network configuration.

\- Test internet connectivity using ping.

\- Test DNS resolution using nslookup.

\- Check available disk space.

\- Display RAM information.

\- View processor information and reported CPU usage.

\- Automatically generate timestamped diagnostic reports.



\## Technologies Used



\- Windows

\- Windows PowerShell 5.1

\- PowerShell scripting

\- Windows command-line utilities

\- Git and GitHub



\## How to Run



1\. Download or clone this repository.

2\. Open Windows PowerShell.

3\. Navigate to the project folder.

4\. Review the contents of `Troubleshooting.ps1`.

5\. Run the script using:



&#x20;  ```powershell

&#x20;  .\\Troubleshooting.ps1

&#x20;  ```



If Windows blocks script execution, check the execution policy before proceeding. For a trusted script, a temporary process-scoped policy can be used:



```powershell

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

```



\## Diagnostic Reports



The script creates a `Reports` folder and saves timestamped diagnostic reports.



Reports are excluded from GitHub using `.gitignore` because they may contain private system and network information.



\## Testing



The toolkit was tested on a Windows laptop using Windows PowerShell.



\- System information successfully retrieved.

\- Network configuration displayed.

\- Ping test completed with 0% packet loss.

\- DNS resolution returned IP addresses.

\- Disk space information retrieved.

\- RAM and CPU information displayed.

\- Diagnostic report successfully generated.



\## Skills Demonstrated



\- Windows troubleshooting

\- PowerShell scripting

\- Basic network diagnostics

\- System information collection

\- IT documentation

\- Troubleshooting and problem-solving



\## Future Improvements



\- Add automatic diagnostic pass/fail summaries.

\- Improve error handling.

\- Export diagnostic information to CSV.

\- Add an interactive menu for selecting troubleshooting tests.

