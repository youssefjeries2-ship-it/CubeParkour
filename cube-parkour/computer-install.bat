@echo off
set "D=%LOCALAPPDATA%\CubeParkour"
mkdir "%D%" 2>nul
copy /y "%~dp0game.html" "%D%\game.html" >nul
copy /y "%~dp0icon.ico" "%D%\icon.ico" >nul
copy /y "%~dp0Play.bat" "%D%\Play.bat" >nul
powershell -NoProfile -Command "$w=New-Object -ComObject WScript.Shell; foreach($p in @([Environment]::GetFolderPath('Desktop'),[Environment]::GetFolderPath('Programs'))){$s=$w.CreateShortcut($p+'\Cube Parkour.lnk');$s.TargetPath='%D%\Play.bat';$s.WorkingDirectory='%D%';$s.IconLocation='%D%\icon.ico';$s.WindowStyle=7;$s.Save()}"
echo Installed. A Cube Parkour icon is now on your Desktop and Start menu.
start "" "%D%\Play.bat"
pause
