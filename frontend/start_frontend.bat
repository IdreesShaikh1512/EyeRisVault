@echo off
echo ============================================
echo   Starting IrisVault Frontend Server
echo ============================================
echo.

cd /d "%~dp0"

REM Check if node_modules exists
if not exist "node_modules" (
    echo Installing dependencies (this may take a few minutes)...
    echo Please wait...
    call npm install
    if errorlevel 1 (
        echo.
        echo ❌ Installation failed! Please check errors above.
        pause
        exit /b 1
    )
    echo ✅ Dependencies installed!
    echo.
) else (
    echo Dependencies already installed!
    echo.
)

echo Starting frontend server on http://localhost:3000
echo Press CTRL+C to stop
echo.
echo ============================================

call npm start

pause

