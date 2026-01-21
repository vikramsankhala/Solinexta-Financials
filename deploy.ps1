# Solinexta Financial Model - Deployment Script
# This script helps you deploy to various free hosting platforms

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Solinexta Financial Model Deployment" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Choose your deployment method:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Netlify Drop (EASIEST - No account needed)" -ForegroundColor Green
Write-Host "   - Go to: https://app.netlify.com/drop" -ForegroundColor White
Write-Host "   - Drag and drop the 'index.html' file" -ForegroundColor White
Write-Host "   - Your site will be live instantly!" -ForegroundColor White
Write-Host ""
Write-Host "2. Surge.sh (CLI - Requires account)" -ForegroundColor Green
Write-Host "   - Run: surge" -ForegroundColor White
Write-Host "   - Enter email/password when prompted" -ForegroundColor White
Write-Host ""
Write-Host "3. Vercel (CLI - Requires account)" -ForegroundColor Green
Write-Host "   - Run: vercel login" -ForegroundColor White
Write-Host "   - Then: vercel" -ForegroundColor White
Write-Host ""
Write-Host "4. GitHub Pages (Requires GitHub account)" -ForegroundColor Green
Write-Host "   - Create a new repository" -ForegroundColor White
Write-Host "   - Upload index.html" -ForegroundColor White
Write-Host "   - Enable Pages in Settings" -ForegroundColor White
Write-Host ""

$choice = Read-Host "Enter your choice (1-4) or press Enter to open Netlify Drop"

if ($choice -eq "1" -or $choice -eq "") {
    Write-Host "Opening Netlify Drop in your browser..." -ForegroundColor Cyan
    Start-Process "https://app.netlify.com/drop"
    Write-Host ""
    Write-Host "Drag and drop 'index.html' onto the page to deploy!" -ForegroundColor Green
} elseif ($choice -eq "2") {
    Write-Host "Deploying with Surge.sh..." -ForegroundColor Cyan
    surge
} elseif ($choice -eq "3") {
    Write-Host "Deploying with Vercel..." -ForegroundColor Cyan
    vercel
} elseif ($choice -eq "4") {
    Write-Host "Opening GitHub..." -ForegroundColor Cyan
    Start-Process "https://github.com/new"
    Write-Host "Create a new repository and upload index.html" -ForegroundColor Green
} else {
    Write-Host "Invalid choice. Opening Netlify Drop..." -ForegroundColor Yellow
    Start-Process "https://app.netlify.com/drop"
}

Write-Host ""
Write-Host "Deployment guide saved in: DEPLOYMENT_GUIDE.md" -ForegroundColor Cyan
