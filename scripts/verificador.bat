@echo off
cls
@echo.
@echo.
@echo -----------------------------------
@echo Github: https://github.com/suchsoak
@echo -----------------------------------
timeout 4 >null
@echo.
@echo [!] informacoes de disco:
@echo.
wmic diskdrive list brief
@echo.
@echo [!] Estado Do Disco:
@echo.
@echo.
wmic diskdrive get status
color 7
timeout 6 >null
cls
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] Verificadores de disco
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo.
@echo -------------------------
@echo  [*] Sfc /ScanNow
@echo -------------------------
timeout 2 >null
Sfc /ScanNow
cls
@echo.
@echo -------------------------
@echo  [*] dism /online /cleanup-image /scanhealth
@echo -------------------------
timeout 2 >null
dism /online /cleanup-image /scanhealth
cls
@echo.
@echo -------------------------
@echo  [*] dism /online /cleanup-image /restorehealth
@echo -------------------------
timeout 2 >null
dism /online /cleanup-image /restorehealth
cls
@echo.
@echo -------------------------
@echo  [*] dism /Online /Cleanup-Image /CheckHealth
@echo -------------------------
timeout 2 >null
dism /Online /Cleanup-Image /CheckHealth
cls
@echo.
@echo -------------------------
@echo  [*] chkdsk
@echo -------------------------
timeout 3 >null
chkdsk
cls
@echo.
@echo -------------------------
@echo  [*] Apagando Arquivos Temporarios
@echo -------------------------
cd %temp%
del /F /Q *
timeout 3 >null
cls
@echo.
@echo -------------------------
@echo  [*] Identificando Disco
@echo -------------------------
@echo.

wmic diskdrive get mediatype | findstr /c:"Fix hard disk media" > null

if %errorlevel% == 0 (
    @echo [*] Recomendo desfragmentar o HD
) else (
    @echo [*] SSD nao e recomendo desfragmentar
)

timeout 3 >null
@echo [*] Processo Finalizado...
timeout 3 >null
@echo.
cls
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] AVISO o processo levara um tempo, dependendo da maquina.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [*] 1. Executar o comando chkdsk /r
@echo:: [*] 2. Nao executar o comando
@echo:::::::::::::::::::::::::::::::::::::::::::: 

set /p op=  escolha uma opcao: 

if %op% equ 1 goto op1
if %op% equ 2 goto op2

:op1

@echo -------------------------
@echo:: [*] chkdsk /r
@echo ------------------------- 
timeout 3 >null
chkdsk /r
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] Por padrao, o seu computador não irar ser reiniciado depois do comando, porem e recomendavel.
@echo::::::::::::::::::::::::::::::::::::::::::::

:op2
cls 
@echo.
@echo [*] Saindo Do Terminal...
timeout 3 >null
color 7
cls
exit
