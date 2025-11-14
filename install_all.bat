@echo off
echo ============================================
echo   IrisVault - Complete Installation
echo ============================================
echo.

cd /d "%~dp0"

echo Step 1: Installing Backend Dependencies
echo ----------------------------------------
echo.
echo ============================================
echo   Backend Installation
echo ============================================
cd backend
if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
)
call venv\Scripts\activate.bat
echo Upgrading pip...
pip install --upgrade pip
echo.
echo Installing Python packages (this may take a few minutes)...
echo Please wait...
pip install -r requirements.txt
if errorlevel 1 (
    echo.
    echo ❌ Installation failed! Please check errors above.
    pause
    exit /b 1
)
echo.
echo ✅ Backend dependencies installed!
echo.
cd ..

echo Step 2: Installing Frontend Dependencies
echo ----------------------------------------
cd frontend
if not exist "node_modules" (
    echo Installing Node packages...
    call npm install
    echo ✅ Frontend dependencies installed!
) else (
    echo Frontend dependencies already installed!
)
echo.
cd ..

echo.
echo ============================================
echo   ✅ INSTALLATION COMPLETE!
echo ============================================
echo.
echo Next steps:
echo 1. Make sure MongoDB is running
echo 2. Double-click: start_both.bat
echo    OR
echo 2. Run backend:  backend\start_backend.bat
echo 3. Run frontend: frontend\start_frontend.bat
echo.
pause

