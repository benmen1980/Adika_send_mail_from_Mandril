@echo off & setlocal
set @batchPath=%~dp0
set @filePath="%@batchPath%sendmail.ps1"
echo %@filePath%
powershell.exe -noexit -file %@filePath% -ToEmail roy@roi-holdings.com -Subject This is test mail from Priority
pause