@echo off
setlocal enabledelayedexpansion
title Setup & Push Portfolio to GitHub

echo ========================================================
echo   🚀 Suhail Ahmed - GitHub Portfolio Auto-Deployer
echo ========================================================
echo.

:: Check Git configuration
git config --global user.name >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] Git User Name is not configured yet.
    set /p GIT_NAME="Enter your Full Name (e.g. Suhail Ahmed): "
    git config --global user.name "!GIT_NAME!"
    echo [+] Configured Git User Name: !GIT_NAME!
)

git config --global user.email >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] Git Email is not configured yet.
    set /p GIT_EMAIL="Enter your GitHub Email: "
    git config --global user.email "!GIT_EMAIL!"
    echo [+] Configured Git Email: !GIT_EMAIL!
)

echo.
echo [+] Initializing Git Repository...
if not exist .git (
    git init
    git branch -M main
)

echo [+] Staging and committing files...
git add .
git commit -m "Launch AI Agent & Developer Portfolio" 2>nul || echo Commit already up to date.

echo.
echo ========================================================
echo   GitHub Repository Link
echo ========================================================
echo 1. Go to https://github.com/new
echo 2. Create a new repository named: portfolio (set it to Public)
echo 3. Enter your GitHub Username below:
echo.

set /p GH_USER="Enter your GitHub Username: "
if "!GH_USER!"=="" (
    echo [!] Username cannot be empty.
    pause
    exit /b
)

:: Set remote
git remote remove origin 2>nul
git remote add origin https://github.com/!GH_USER!/portfolio.git
echo [+] Remote set to: https://github.com/!GH_USER!/portfolio.git
echo.

echo [*] Pushing to GitHub (Browser authentication popup may appear)...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================================
    echo   🎉 SUCCESS! Portfolio pushed to GitHub!
    echo ========================================================
    echo.
    echo To make it live on the web:
    echo 1. Visit: https://github.com/!GH_USER!/portfolio/settings/pages
    echo 2. Under 'Build and deployment' -> 'Branch', select 'main' and '/ (root)'.
    echo 3. Click Save!
    echo.
    echo In 1-2 minutes, your website will be LIVE at:
    echo 👉 https://!GH_USER!.github.io/portfolio/
    echo.
) else (
    echo.
    echo [!] Push encountered an issue. Please verify your credentials or permissions.
)

pause
