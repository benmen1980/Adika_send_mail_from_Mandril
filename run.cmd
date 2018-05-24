@echo off & setlocal
set @batchPath=%~dp0
set @filePath="%@batchPath%sendmail.ps1"
set @Subject="This is test mail from Priority"
REM if you want to see the code add -noexit before the -file
START "" powershell.exe  -file %@filePath% -ToEmail roy@roi-holdings.com  -Subject %@Subject%
