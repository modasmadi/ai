@echo off
echo ===================================================
echo   Building AI Study Helper (Production Version)
echo ===================================================
echo.
echo This script will build the .aab file for Google Play.
echo It might take 15-20 minutes.
echo.

set EAS_NO_VCS=1
call eas build --platform android --profile production --clear-cache

echo.
echo ===================================================
echo   Build Process Finished!
echo   If successful, copy the link above to download.
echo ===================================================
pause
