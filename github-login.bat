@echo off
echo ===================================================
echo             GitHub Authentication Login
echo ===================================================
echo.
echo Follow the prompts:
echo 1. Select "GitHub.com"
echo 2. Select "HTTPS"
echo 3. Select "Yes" to authenticate with GitHub credentials
echo 4. Select "Login with a web browser" and press Enter
echo.

"C:\Program Files\GitHub CLI\gh.exe" auth login

echo.
pause
