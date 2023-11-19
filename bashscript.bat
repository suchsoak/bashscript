@echo off
@echo.
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [*] 1. Verificar discos
@echo:: [*] 2. Resetadores Netsh
@echo:: [*] 3. Systeminfo 
@echo:: [*] 4. Sair do terminal 
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [*] Github:github.com/suchsoak
@echo:: [*] V.1.0.0
@echo:: [*] BY: ~#M?x
set /p escolha= escolha uma opcao:
if %escolha% equ 1 goto escolha1 
if %escolha% equ 2 goto escolha2
if %escolha% equ 3 goto escolha3
if %escolha% equ 4 goto escolha4

:escolha1

@echo off
cls
@echo.
@echo.
@echo -------------------------
@echo github: https://github.com/suchsoak
@echo -------------------------
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
@echo [*] Processo Finalizado...
timeout 3 >null
@echo.

@echo [!] caso queria fazer uma verificacao mais completa existe o comando chkdsk /r.
@echo [!] Porem nesse comando seu computador precisara ser reiniciado e isso levara tempo.

@echo::::::::::::::::::::::::::::::::::::::::::::--
@echo:: [!] AVISO o processo levara um tempo, dependendo da maquina.
@echo::::::::::::::::::::::::::::::::::::::::::::-- 
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [*] A. Executar o comando chkdsk /r
@echo:: [*] B. Nao executar o comando
@echo:::::::::::::::::::::::::::::::::::::::::::: 

set /p escolha=  escolha uma opcao: 

if %escolha% equ A goto escolhaA
if %escolha% equ B goto escolhaB

:escolhaA

@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [*] chkdsk /r
@echo:::::::::::::::::::::::::::::::::::::::::::: 
timeout 3 >null
chkdsk /r
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] Por padrao, o seu computador não irar ser reiniciado depois do comando, porem e recomendavel.
@echo::::::::::::::::::::::::::::::::::::::::::::


:escolhaB 
@echo.
@echo [*] Saindo Do Terminal...
timeout 3 >null
color 7
cls
exit

:escolha2

@echo off
cls
@echo.
@echo -----------------------------------
@echo github: https://github.com/suchsoak
@echo -----------------------------------
@echo.
color 4
timeout 4 >null
@echo [!] Informacoes De Rede: 
color 7
@echo.
netsh wlan show profiles name="Interface" key=clear | findstr "Nome SSID"
netsh wlan show profiles name="Interface" key=clear | findstr "Chave"
netsh wlan show interfaces | findstr "Perfil" 
netsh wlan show interfaces | findstr "Estado"
netsh wlan show interfaces | findstr "Sinal"
netsh wlan show interfaces | findstr "Canal"
netsh wlan show interfaces | findstr "Descrição"
netsh wlan show interfaces | findstr "BSSID"
netsh interface ipv4 show addresses "Wi-Fi" | findstr "Endereço IP"

@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] Resetadores de rede
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [*] Configurando ipconfig...
@echo:::::::::::::::::::::::::::::::::::::::::::: 
timeout /t 4 >null
ipconfig /renew
cls
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] Configuracao de ip concluida.
@echo::::::::::::::::::::::::::::::::::::::::::::
timeout /t 3 > null
@echo.
@echo::::::::::::::::::::::::::::::::::::::::::::
@echo:: [!] Configurando Netsh... 
@echo::::::::::::::::::::::::::::::::::::::::::::
timeout /t 6 >null
@echo.

netsh winsock reset all
netsh int 6to4 reset all
netsh int ipv4 reset all
netsh int ipv6 reset all
netsh int httpstunnel reset all
netsh int isatap reset all
netsh int portproxy reset all
netsh int tcp reset all
netsh int teredo reset all
netsh int ip reset
netsh interface reset all

cls

@echo.
@echo -------------------------------------------------
@echo Netsh configurado, agora reinicie o computador.
@echo -------------------------------------------------
@echo.
@pause
exit

:escolha3

@echo off
color 4
@echo.
@echo.
@echo --------------------
@echo.
@echo [*] github: https://github.com/suchsoak 
@echo.
@echo --------------------
@echo.
timeout /t 6 >null
wmic OS get name
ver
@echo.
date /t
@echo. 
@echo Horas: %time%
@echo.
@echo --------------------
@echo.
@echo [!] Local:
timeout /t 2 > null
@echo.
@echo IP:
@echo.
curl -s ipinfo.io/ip 
@echo.
@echo.
@echo Cidade:

@echo.

curl -s ipinfo.io/city

@echo.

@echo Codigo-Postal:
@echo.
curl -s ipinfo.io/postal
@echo.
@echo Pais:
@echo.
curl -s ipinfo.io/country
@echo.
@echo --------------------
@echo.
@echo [!] Informacoes Adicionais:
@echo.
color 1
systeminfo| findstr "Proprietário registrado"
@echo.
@echo [*] Serial: %PROGRAMFILES(x86)% 
@echo [*] Maquina: %computername%  
@echo [*] Usuario: %username% 
@echo [*] Operacional: %OS% 
@echo [*] Pasta: %SYSTEMROOT& 
timeout /t 6 > null
@echo.
@echo --------------------
@echo.
@echo [!] Informacoes Do Processador:
color 5
timeout /t 6 > null
@echo.
wmic CPU get name
@echo.
@echo [*] Arquitetura: %PROCESSOR_ARCHITECTURE%
@echo [*] Processador: %PROCESSOR_IDENTIFIER% 
@echo [*] Versao: %PROCESSOR_REVISION% 
@echo [*] Nucleos: %NUMBER_OF_PROCESSORS%
@echo.
@echo --------------------
@echo.
@echo [!] Informacoes do disco:
color 6
timeout /t 5 > null
@echo.
wmic diskdrive list brief
@echo --------------------
@echo.
@echo [!] Informacoes da Placa De Video:
color 7
timeout /t 5 > null
@echo.
wmic path win32_VideoController get name
wmic path win32_VideoController get name, adapterram, driverversion
@echo.
@echo --------------------
@echo.
color 9
timeout /t 5 > null
@echo [!] Informacoes da Placa Mae:
@echo.
color 2
timeout /t 2 > null
wmic baseboard get Manufacturer 
wmic BIOS get name
wmic bios get ReleaseDate
wmic baseboard get product
@echo.
@echo --------------------
@echo.
@echo [!] Informacoes De Rede:
@echo.
timeout /t 6 > null
color 8
netsh interface ipv4 show addresses "Wi-Fi" | findstr "Endereço IP"
netsh wlan show profiles name="Interface" key=clear | findstr "Nome SSID"
netsh wlan show profiles name="Interface" key=clear | findstr "Chave"
netsh wlan show interfaces | findstr "Perfil"
netsh wlan show interfaces | findstr "Estado"
netsh wlan show interfaces | findstr "Sinal"
netsh wlan show interfaces | findstr "Canal"
netsh wlan show interfaces | findstr "Descrição"
netsh wlan show interfaces | findstr "BSSID"
color 7
@echo.
@echo --------------------
timeout /t 3 >null
@echo [!] Salvando as informacoes em um arquivo txt (informacoes.txt)...
@echo --------------------
@echo off
@echo -------------------- > informacoes.txt
@echo. >> informacoes.txt
@echo [*] github: https://github.com/suchsoak >> informacoes.txt
@echo. >> informacoes.txt
@echo -------------------- >> informacoes.txt
@echo. >> informacoes.txt
wmic OS get name >> informacoes.txt
ver >> informacoes.txt
@echo. >> informacoes.txt
date /t >> informacoes.txt
@echo.  >> informacoes.txt
@echo Horas: %time% >> informacoes.txt
@echo. >> informacoes.txt
@echo -------------------- >> informacoes.txt
@echo. >> informacoes.txt
@echo [!] Local: >> informacoes.txt
timeout /t 2 > null
@echo. >> informacoes.txt
@echo IP: >> informacoes.txt
@echo. >> informacoes.txt
curl -s ipinfo.io/ip >> informacoes.txt
@echo. >> informacoes.txt
@echo. >> informacoes.txt
@echo Cidade: >> informacoes.txt
@echo. >> informacoes.txt
curl -s ipinfo.io/city >> informacoes.txt
@echo. >> informacoes.txt
@echo Codigo-Postal: >> informacoes.txt
@echo. >> informacoes.txt
curl -s ipinfo.io/postal >> informacoes.txt
@echo. >> informacoes.txt
@echo Pais: >> informacoes.txt
@echo. >> informacoes.txt
curl -s ipinfo.io/country >> informacoes.txt
@echo. >> informacoes.txt
@echo -------------------- >> informacoes.txt
@echo. >> informacoes.txt
@echo [!] Informacoes Adicionais: >> informacoes.txt
@echo. >> informacoes.txt
color 1
systeminfo| findstr "Proprietário registrado" >> informacoes.txt
@echo.>> informacoes.txt
@echo [*] Serial: %PROGRAMFILES(x86)% >> informacoes.txt
@echo [*] Maquina: %computername% >> informacoes.txt
@echo [*] Usuario: %username% >> informacoes.txt
@echo [*] Operacional: %OS% >> informacoes.txt
@echo [*] Pasta: %SYSTEMROOT% >> informacoes.txt
@echo. >> informacoes.txt
@echo -------------------- >> informacoes.txt
@echo. >> informacoes.txt
@echo [!] Informacoes Do Processador: >> informacoes.txt
color 5
@echo. >> informacoes.txt
wmic CPU get name >> informacoes.txt
@echo. >> informacoes.txt
@echo [*] Arquitetura: %PROCESSOR_ARCHITECTURE% >> informacoes.txt
@echo [*] Processador: %PROCESSOR_IDENTIFIER% >> informacoes.txt
@echo [*] Versao: %PROCESSOR_REVISION% >> informacoes.txt
@echo [*] Nucleos: %NUMBER_OF_PROCESSORS% >> informacoes.txt
@echo. >> informacoes.txt
@echo -------------------- >> informacoes.txt
@echo. >> informacoes.txt
@echo [!] Informacoes do disco: >> informacoes.txt
color 6
@echo. >> informacoes.txt
wmic diskdrive list brief >> informacoes.txt
@echo -------------------- >> informacoes.txt
@echo. >> informacoes.txt
@echo [!] Informacoes da Placa De Video: >> informacoes.txt
color 7
@echo. >> informacoes.txt
wmic path win32_VideoController get name >> informacoes.txt
wmic path win32_VideoController get name, adapterram, driverversion >> informacoes.txt
@echo. >> informacoes.txt
@echo -------------------- >> informacoes.txt
@echo. >> informacoes.txt
color 9
@echo [!] Informacoes da Placa Mae: >> informacoes.txt
@echo. >> informacoes.txt
color 2
wmic baseboard get Manufacturer >> informacoes.txt
wmic BIOS get name >> informacoes.txt
wmic bios get ReleaseDate >> informacoes.txt
wmic baseboard get product >> informacoes.txt
@echo. >> informacoes.txt
@echo -------------------- >> informacoes.txt
@echo. >> informacoes.txt
@echo [!] Informacoes De Rede: >> informacoes.txt
@echo. >> informacoes.txt
color 8
netsh interface ipv4 show addresses "Wi-Fi" | findstr "Endereço IP" >> informacoes.txt
netsh wlan show profiles name="Interface" key=clear | findstr "Nome SSID" >> informacoes.txt
netsh wlan show profiles name="Interface" key=clear | findstr "Chave" >> informacoes.txt
netsh wlan show interfaces | findstr "Perfil" >> informacoes.txt
netsh wlan show interfaces | findstr "Estado" >> informacoes.txt
netsh wlan show interfaces | findstr "Sinal" >> informacoes.txt
netsh wlan show interfaces | findstr "Canal" >> informacoes.txt
netsh wlan show interfaces | findstr "Descrição" >> informacoes.txt
netsh wlan show interfaces | findstr "BSSID" >> informacoes.txt
color 7
@echo. >> informacoes.txt
@echo -------------------- >> informacoes.txt
timeout 5 >null
@echo -------------------- 
@echo [*] Todas as informacoes foram salvas.
@echo -------------------- 
timeout 3 >null
@echo -------------------- 
@echo [!] Precione Enter para sair do terminal.
@echo -------------------- 
set /p sair=
if "%input%"==""(
  exit
)

:escolha4
exit
