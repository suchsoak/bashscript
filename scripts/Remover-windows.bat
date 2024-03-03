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
@echo Agora reinicie a maquina.
@pause