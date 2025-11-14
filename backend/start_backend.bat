@echo off
echo ============================================
echo   Starting IrisVault Backend Server
echo ============================================
echo.

cd /d "%~dp0"

REM Activate virtual environment
if exist "venv\Scripts\activate.bat" (
    call venv\Scripts\activate.bat
    echo Virtual environment activated
) else (
    echo Creating virtual environment...
    python -m venv venv
    call venv\Scripts\activate.bat
)

REM Check if dependencies are installed
python -c "import fastapi" >nul 2>&1
if errorlevel 1 (
    echo Installing dependencies (this may take a few minutes)...
    pip install --upgrade pip
    pip install -r requirements.txt
    echo Dependencies installed!
) else (
    echo Dependencies already installed!
)

echo.
echo Starting backend server on http://localhost:8000
echo Press CTRL+C to stop
echo.
echo ============================================

uvicorn server:app --reload --host 0.0.0.0 --port 8000

pause

