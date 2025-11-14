@echo off
echo ============================================
echo   Pushing IrisVault to GitHub
echo ============================================
echo.

cd /d "%~dp0"

echo Step 1: Checking Git status...
git status --short
echo.

echo Step 2: Adding all files...
git add .
echo.

echo Step 3: Committing changes...
git commit -m "Initial commit: IrisVault - Biometric ATM System with enhanced features and easy setup"
echo.

echo Step 4: Setting remote repository...
git remote remove origin 2>nul
git remote add origin https://github.com/IdreesShaikh1512/EyeRisVault.git
echo Remote added: https://github.com/IdreesShaikh1512/EyeRisVault.git
echo.
echo Current remote:
git remote -v
echo.

echo Step 5: Creating repository on GitHub (if needed)...
echo.
echo ⚠️  IMPORTANT: Make sure you have created the repository on GitHub first!
echo.
echo To create the repository:
echo 1. Go to: https://github.com/new
echo 2. Repository name: EyeRisVault
echo 3. Description: Biometric ATM System with Iris Recognition
echo 4. Choose Public or Private
echo 5. DO NOT initialize with README, .gitignore, or license
echo 6. Click "Create repository"
echo.
pause

echo.
echo Step 6: Pushing to GitHub...
git branch -M main
git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ Push failed! Possible reasons:
    echo 1. Repository doesn't exist on GitHub - Create it first!
    echo 2. Authentication required - You may need to use GitHub CLI or Personal Access Token
    echo 3. Check your internet connection
    echo.
    echo To push manually:
    echo   git push -u origin main
    echo.
) else (
    echo.
    echo ✅ Successfully pushed to GitHub!
    echo.
    echo Repository: https://github.com/IdreesShaikh1512/EyeRisVault
    echo.
)

pause

