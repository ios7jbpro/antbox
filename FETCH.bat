@echo off
:memreductinstall
cd C:\Users\WDAGUtilityAccount\Desktop
curl -L -o memreduct.exe https://memreduct.org/files/memreduct-3.5.2-setup.exe
memreduct.exe /silent
if EXIST "C:\Program Files\Mem Reduct\memreduct.exe" (goto spamkill) else (goto memreductinstall)

:spamkill
taskkill /f /im StartMenuExperienceHost.exe
taskkill /f /im ShellExperienceHost.exe
taskkill /f /im explorer.exe
taskkill /f /im taskmgr.exe
taskkill /f /im regedit.exe
taskkill /f /im TiWorker.exe
taskkill /f /im spoolsv.exe
taskkill /f /im LSalso.exe
taskkill /f /im rdpclip.exe
taskkill /f /im WmiPrsvSE.exe
goto spamkill
