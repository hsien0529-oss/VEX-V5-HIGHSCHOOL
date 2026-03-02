@echo off
chcp 65001 >nul
echo ==========================================
echo   VEX V5 高中組行程 - GitHub 推播工具
echo ==========================================
echo.

cd /d "%~dp0"

echo [1/3] 加入所有變更...
git add .

echo.
set /p MSG="請輸入更新說明（直接按 Enter 使用預設）: "
if "%MSG%"=="" set MSG=更新行程內容

echo.
echo [2/3] 提交變更: %MSG%
git commit -m "%MSG%"

echo.
echo [3/3] 推送到 GitHub...
git push origin main

echo.
echo ==========================================
echo   ✅ 推播完成！
echo   https://github.com/hsien0529-oss/VEX-V5-HIGHSCHOOL
echo ==========================================
echo.
pause
