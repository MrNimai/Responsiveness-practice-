# Auto-push script with error handling and logging
Write-Host "Starting auto-push script..." -ForegroundColor Green

try {
    # Check if there are any changes to commit
    $status = git status --porcelain
    if ([string]::IsNullOrEmpty($status)) {
        Write-Host "No changes to commit. Script completed." -ForegroundColor Yellow
        exit 0
    }

    Write-Host "Changes detected:" -ForegroundColor Cyan
    git status --short

    # Stage all changes
    Write-Host "Staging changes..." -ForegroundColor Cyan
    git add .

    # Commit with timestamp
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $commitMessage = "Auto update - $timestamp"
    Write-Host "Committing changes: $commitMessage" -ForegroundColor Cyan
    git commit -m "$commitMessage"

    # Push to remote
    Write-Host "Pushing to remote repository..." -ForegroundColor Cyan
    git push

    Write-Host "Auto-push completed successfully!" -ForegroundColor Green
}
catch {
    Write-Host "Error occurred during auto-push: $_" -ForegroundColor Red
    exit 1
}