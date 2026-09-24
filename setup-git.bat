@echo off
setlocal
echo ==============================================
echo   Publishing Project to GitHub with GitHub CLI
echo ==============================================
echo.

set "PATH=%PATH%;C:\Program Files\GitHub CLI;C:\Users\shour\AppData\Local\Programs\Git\cmd"

echo Enter a name for your new GitHub repository:
set /p REPO_NAME="Repository Name (e.g., my-project): "

if "%REPO_NAME%"=="" (
    set REPO_NAME=my-new-project
)

echo.
echo Creating repository "%REPO_NAME%" on your GitHub account and pushing...
echo.

gh repo create %REPO_NAME% --public --source=. --remote=origin --push

echo.
echo ==============================================
echo Done! Your project is now live on GitHub!
echo ==============================================
echo.
pause
