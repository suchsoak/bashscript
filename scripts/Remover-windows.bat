@echo off
cls
@echo --------------------
@echo.
@echo [*] github: https://github.com/suchsoak 
@echo.
@echo --------------------
@echo.
timeout /t 3 >null
SLMGR.VBS /CPKY 
SLMGR.VBS /CKMS 
Net stop Sppsvc 
CD C:\Windows\System32\SPP\Store\2.0 
Ren Tokens.dat Tokens.old 
SLMGR.VBS /RILC 
Bcdedit.exe -set loadoptions ENABLE_INTEGRITY_CHECKS
Bcdedit.exe -set TESTSIGNING OFF
@echo Agora reinicie a maquina.
@pause
exit
