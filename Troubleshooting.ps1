# Create a folder for diagnostic reports
$reportFolder = Join-Path $PSScriptRoot "Reports"
New-Item -ItemType Directory -Path $reportFolder -Force | Out-Null

# Create a report filename
$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$reportPath = Join-Path $reportFolder "Diagnostic_$timestamp.txt"

# Start recording diagnostic results
Start-Transcript -Path $reportPath

# Windows IT Troubleshooting Toolkit
# Collects basic Windows system and network diagnostics

Write-Host "===================================="
Write-Host " WINDOWS IT TROUBLESHOOTING TOOLKIT"
Write-Host "===================================="

# 1. System information
Write-Host "`n--- SYSTEM INFORMATION ---"
Get-ComputerInfo |
    Select-Object CsName, WindowsProductName, OsVersion |
    Format-List

# 2. Network configuration
Write-Host "`n--- NETWORK CONFIGURATION ---"
ipconfig

# 3. Internet connectivity
Write-Host "`n--- INTERNET CONNECTIVITY ---"
ping 8.8.8.8

# 4. DNS resolution
Write-Host "`n--- DNS TEST ---"
nslookup google.com

# 5. Disk space
Write-Host "`n--- DISK SPACE ---"
Get-PSDrive -PSProvider FileSystem |
    Format-Table -AutoSize

# 6. RAM information
Write-Host "`n--- MEMORY INFORMATION ---"
Get-CimInstance Win32_OperatingSystem |
    Select-Object TotalVisibleMemorySize, FreePhysicalMemory |
    Format-List

# 7. CPU information
Write-Host "`n--- CPU INFORMATION ---"
Get-CimInstance Win32_Processor |
    Select-Object Name, LoadPercentage |
    Format-List

Write-Host "`n===================================="
Write-Host " DIAGNOSTIC CHECKS COMPLETED"
Write-Host "===================================="

# Stop recording diagnostic output
Stop-Transcript
