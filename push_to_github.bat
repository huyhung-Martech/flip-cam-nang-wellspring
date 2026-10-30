@echo off
chcp 65001 >nul
echo ============================================================
echo   ĐANG ĐẨY TOÀN BỘ SÁCH LẬT 3D LÊN GITHUB REPOSITORY...
echo ============================================================
cd /d "%~dp0"

REM Search for git executable
set "GIT_CMD=git"
where git >nul 2>nul
if %errorlevel% neq 0 (
    if exist "C:\Program Files\Git\bin\git.exe" set "GIT_CMD=C:\Program Files\Git\bin\git.exe"
    if exist "C:\Program Files\Git\cmd\git.exe" set "GIT_CMD=C:\Program Files\Git\cmd\git.exe"
)

echo Dang su dung: %GIT_CMD%

if not exist ".git" (
    "%GIT_CMD%" init -b main
    "%GIT_CMD%" remote add origin https://github.com/huyhung-Martech/flip-cam-nang-wellspring.git
)

"%GIT_CMD%" config user.name "huyhung-Martech"
"%GIT_CMD%" config user.email "huyhung@martech.vn"

echo Dang add files...
"%GIT_CMD%" add .

echo Dang commit...
"%GIT_CMD%" commit -m "Initial commit: Interactive 3D flipbook for Wellspring handbook (12 pages)"

echo Dang push len GitHub...
echo (Luu y: Neu cua so trinh duyet hien ra, ban chi can bam xac nhan Dang nhap GitHub)
"%GIT_CMD%" push -u origin main --force

echo ============================================================
echo   HOÀN TẤT ĐẨY LÊN GITHUB!
echo ============================================================
pause

