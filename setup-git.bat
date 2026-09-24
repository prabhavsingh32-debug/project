@echo off
echo ==============================================
echo   Initializing Git and Committing Project
echo ==============================================
echo.

git init -b main
git add .
git commit -m "Initial commit"

echo.
echo ==============================================
echo   Local Git setup is complete!
echo ==============================================
echo.
set /p REPO_URL="Paste your GitHub repository URL (or press Enter to skip): "

if not "%REPO_URL%"=="" (
    git remote remove origin 2>nul
    git remote add origin %REPO_URL%
    git branch -M main
    git push -u origin main
    echo.
    echo Pushed successfully to %REPO_URL%!
)

echo.
pause
