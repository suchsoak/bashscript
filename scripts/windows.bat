@echo off
cls
@echo --------------------
@echo.
@echo [*] github: https://github.com/suchsoak 
@echo.
@echo --------------------
@echo.
net stop wuauserv
net stop bits
net stop cryptsvc
net stop trustedinstaller
net stop appidsvc
ren %systemroot%\softwaredistribution softwaredistribution.bak
ren %systemroot%\system32\catroot2 catroot2.bak
net start wuauserv
net start bits
net start cryptsvc
net stop trustedinstaller
net start appidsvc
SC config wuauserv start= auto 
SC config bits start= auto 
SC config cryptsvc start= auto 
SC config trustedinstaller start= auto
SC config wuauserv start= auto 
SC config bits start= auto 
SC config cryptsvc start= auto 
SC config trustedinstaller start= auto

@echo.
@echo Verifique nas configuracoes se o windows esta atualizando.
@echo Caso nao esteja reinicie a maquina.
@echo.
@pause
exit