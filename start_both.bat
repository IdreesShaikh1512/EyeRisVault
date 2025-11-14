@echo off
echo ============================================
echo   Starting IrisVault - Backend & Frontend
echo ============================================
echo.
echo This will start both servers in separate windows
echo.
echo Press any key to continue...
pause > nul

start "IrisVault Backend" cmd /k "cd /d %~dp0backend && start_backend.bat"
timeout /t 3 /nobreak > nul
start "IrisVault Frontend" cmd /k "cd /d %~dp0frontend && start_frontend.bat"

echo.
echo ============================================
echo   Both servers are starting!
echo ============================================
echo.
echo Backend: http://localhost:8000
echo Frontend: http://localhost:3000
echo.
echo Two new windows will open with the servers
echo Close those windows to stop the servers
echo.
pause

