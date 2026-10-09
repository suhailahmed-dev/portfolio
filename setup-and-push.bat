@echo off
setlocal enabledelayedexpansion
title Push Suhail Ahmed Portfolio to GitHub

echo ========================================================
echo   🚀 Suhail Ahmed Buledi - Portfolio Auto-Deployer
echo ========================================================
echo.
echo [*] Account:  suhailahmed-dev
echo [*] Email:    sohailbuledi84@gmail.com
echo [*] Repo:     https://github.com/suhailahmed-dev/portfolio.git
echo.

echo [+] Ensuring all latest 3D, WFH and motion files are staged...
git add .
git commit -m "Deploy latest 3D WFH portfolio" 2>nul || echo Commit up to date.

echo.
echo [*] Pushing to GitHub...
echo (Agar browser window khulay, to 'Sign in with your browser' par click karna)
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
    echo    Agar nahi banaya, to foran yahan se 1-click mein bana lo:
    echo    👉 https://github.com/new?name=portfolio
    echo.
    echo 2. Repository banane ke baad yeh script dobara chalao!
    echo.
    pause
)
