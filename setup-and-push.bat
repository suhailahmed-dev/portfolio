@echo off
setlocal enabledelayedexpansion
title Push Portfolio to GitHub

echo ========================================================
echo   🚀 Suhail Ahmed - GitHub Portfolio Auto-Deployer
echo ========================================================
echo.
echo [*] Username: suhailahmed-dev
echo [*] Email:    sohailbuledi84@gmail.com
echo [*] Repo:     https://github.com/suhailahmed-dev/portfolio.git
echo.

echo [+] Ensuring latest changes are committed...
git add .
git commit -m "Update portfolio for Suhail Ahmed" 2>nul || echo Commit already up to date.

echo.
echo [*] Pushing to GitHub...
echo (Agar browser window pop up ho, to 'Sign in with your browser' pe click karna)
echo.

git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================================
    echo   🎉 MUBARAK HO! Portfolio GitHub pe chala gaya!
    echo ========================================================
    echo.
    echo Ab isko Internet pe LIVE karne ke liye:
    echo 1. Browser mein yeh link kholo:
    echo    👉 https://github.com/suhailahmed-dev/portfolio/settings/pages
    echo.
    echo 2. 'Branch' mein 'main' select karke Save daba do.
    echo.
    echo 1 se 2 minute mein website LIVE ho jayegi yahan:
    echo    🌐 https://suhailahmed-dev.github.io/portfolio/
    echo.
    echo Press any key to open the GitHub Pages settings in browser...
    pause >nul
    start "" "https://github.com/suhailahmed-dev/portfolio/settings/pages"
) else (
    echo.
    echo ========================================================
    echo   [!] Push Nahi Hua! Wajah:
    echo ========================================================
    echo 1. Kya aapne GitHub par 'portfolio' naam ka repository bana liya hai?
    echo    Agar nahi banaya, to yahan se 1-click mein bana lo:
    echo    👉 https://github.com/new?name=portfolio
    echo.
    echo 2. Repository banane ke baad yeh script dobara chalao!
    echo.
    pause
)
