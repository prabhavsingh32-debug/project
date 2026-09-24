@echo off
echo ==============================================
echo       Quick Git Commit and Push
echo ==============================================
echo.

git status
echo.
set /p COMMIT_MSG="Enter commit message (e.g. 'Updated files'): "

if "%COMMIT_MSG%"=="" (
    set COMMIT_MSG=Quick update
)

git add .
git commit -m "%COMMIT_MSG%"
git push origin main

echo.
echo Changes pushed to GitHub successfully!
echo.
pause
