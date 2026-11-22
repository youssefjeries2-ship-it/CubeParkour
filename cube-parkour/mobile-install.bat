@echo off
chcp 65001 >nul
title مكعب باركور - مثبت الهاتف المحمول

:: Colors
set "GREEN=\033[92m"
set "YELLOW=\033[93m"
set "RED=\033[91m"
set "CYAN=\033[96m"
set "RESET=\033[0m"
set "BOLD=\033[1m"

reg add HKCU\Console /v VirtualTerminalLevel /t REG_DWORD /d 1 /f >nul 2>&1

cls
echo.
echo  %BOLD%%CYAN%╔══════════════════════════════════════════════════════════════╗%RESET%
echo  %BOLD%%CYAN%║              %GREEN%مكعب باركور - مثبت الهاتف%RESET%%BOLD%%CYAN%                  ║%RESET%
echo  %BOLD%%CYAN%╚══════════════════════════════════════════════════════════════╝%RESET%
echo.

echo  هذا السكريبت يساعدك على تثبيت اللعبة على الهاتف المحمول.
echo.
echo  %CYAN%📱 خيارات التثبيت:%RESET%
echo.
echo    1) Android - عبر Termux (يحتاج Termux:API)
echo    2) Android - عبر متصفح Chrome/Edge (يدوي)
echo    3) iOS - عبر Safari (يدوي)
echo    4) فتح صفحة التثبيت التفاعلية
echo.
set /p choice="اختر [1-4]: "

if "%choice%"=="1" (
    echo.
    echo  %CYAN%🔧%RESET% تثبيت عبر Termux...
    echo.
    echo  المتطلبات:
    echo   1. ثبّت Termux من F-Droid (وليس Play Store)
    echo   2. ثبّت Termux:API من F-Droid
    echo   3. في Termux، شغّل: pkg install termux-api curl
    echo   4. ثم شغّل هذا الأمر في Termux:
    echo.
    echo    curl -sL https://raw.githubusercontent.com/username/parkour-cube/main/mobile-install.sh | bash
    echo.
    echo  %YELLOW%ملاحظة:%RESET% استبدل الرابط أعلاه برابط مستودعك الحقيقي على GitHub.
    echo.
    pause
    exit /b
)

if "%choice%"=="2" (
    echo.
    echo  %CYAN%📱%RESET% تثبيت يدوي على Android (Chrome/Edge/Firefox):
    echo.
    echo  1. افتح الرابط في المتصفح
    echo  2. اضغط قائمة ⋮ (النقاط الثلاث)
    echo  3. اختر "تثبيت التطبيق" أو "إضافة إلى الشاشة الرئيسية"
    echo  4. اضغط "تثبيت" في التأكيد
    echo.
    echo  %CYAN%🔗 رابط اللعبة:%RESET% https://github.com/username/parkour-cube
    echo.
    pause
    exit /b
)

if "%choice%"=="3" (
    echo.
    echo  %CYAN%🍎%RESET% تثبيت يدوي على iOS (Safari):
    echo.
    echo  1. افتح الرابط في Safari فقط
    echo  2. اضغط زر المشاركة 📤 (السهم لأعلى)
    echo  3. مرر لأسفل واختر "إضافة إلى الشاشة الرئيسية"
    echo  4. اضغط "إضافة" في الأعلى
    echo.
    echo  %CYAN%🔗 رابط اللعبة:%RESET% https://github.com/username/parkour-cube
    echo.
    pause
    exit /b
)

if "%choice%"=="4" (
    echo.
    echo  %CYAN%🌐%RESET% فتح صفحة التثبيت التفاعلية...
    if exist "install-mobile.html" (
        start "" "install-mobile.html"
    ) else (
        echo  الملف install-mobile.html غير موجود في نفس المجلد.
        echo  تأكد من وجود جميع الملفات في نفس المجلد.
    )
    echo.
    pause
    exit /b
)

echo.
echo  %RED%خيار غير صحيح%RESET%
pause