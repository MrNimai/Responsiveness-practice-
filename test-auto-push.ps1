# Test script for auto-push.ps1
Write-Host "=== Testing auto-push.ps1 ===" -ForegroundColor Magenta

# Create a test file
Write-Host "Creating test file..." -ForegroundColor Cyan
$testFile = "test-temp.txt"
"Test content at $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" | Out-File -FilePath $testFile

# Run auto-push
Write-Host "Running auto-push script..." -ForegroundColor Cyan
& ".\auto-push.ps1"

# Clean up test file
Write-Host "Cleaning up test file..." -ForegroundColor Cyan
Remove-Item $testFile -Force

Write-Host "=== Test completed ===" -ForegroundColor Magenta