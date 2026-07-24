# publish.ps1 — stage, commit, and push changes so Vercel auto-deploys.
# Usage:
#   .\publish.ps1               # commits with a timestamped message
#   .\publish.ps1 "my message"  # commits with your message
param([string]$Message = "")

if ([string]::IsNullOrWhiteSpace($Message)) {
    $Message = "Update site - " + (Get-Date -Format "yyyy-MM-dd HH:mm")
}

git add -A

# Only commit if there is something staged
git diff --cached --quiet
if ($LASTEXITCODE -eq 0) {
    Write-Host "No changes to publish." -ForegroundColor Yellow
    exit 0
}

git commit -m $Message
if ($LASTEXITCODE -ne 0) { Write-Host "Commit failed." -ForegroundColor Red; exit 1 }

git push
if ($LASTEXITCODE -ne 0) {
    Write-Host "Push failed. Have you run 'git remote add origin ...' and pushed once with -u?" -ForegroundColor Red
    exit 1
}

Write-Host "Pushed. Vercel will auto-deploy in a few seconds." -ForegroundColor Green
