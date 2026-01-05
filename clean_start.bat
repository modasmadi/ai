@echo off
echo ===================================================
echo   Running AI Study Helper - Cleanup & Start Script
echo ===================================================
echo.
echo 1. Cleaning old files (this might take a minute)...
if exist node_modules rmdir /s /q node_modules
if exist .expo rmdir /s /q .expo
if exist package-lock.json del package-lock.json

echo.
echo 2. Installing dependencies...
call npm install

echo.
echo 3. Starting App in Tunnel Mode...
echo    (Scan the QR code with Expo Go app on your phone)
echo ===================================================
call npx expo start --tunnel
pause
