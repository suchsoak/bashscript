@echo off
cls
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
curl -s ipinfo.io | findstr "ip"
curl -s ipinfo.io | findstr "country"
curl -s ipinfo.io | findstr "region"
curl -s ipinfo.io | findstr "postal"
curl -s ipinfo.io | findstr "city"
curl -s ipinfo.io | findstr "hostname"
curl -s ipinfo.io | findstr "loc"
curl -s ipinfo.io | findstr "org"
@echo.

if curl -s ipinfo.io == nul(
  @echo.
)else(
  @echo error
)

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
@echo.
wmic partition get name,size,type
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
wmic BIOS get name
wmic bios get ReleaseDate
wmic baseboard get product
@echo.
@echo --------------------
@echo.
@echo [!] Informacoes da Memoria Ram:
@echo.
wmic memorychip get Manufacturer,Capacity,PartNumber,Speed,DeviceLocator
echo.
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
netsh wlan show interfaces | findstr "Criptografia"
netsh wlan show interfaces | findstr "Faixa"
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
curl ipinfo.io | findstr "ip" >> informacoes.txt
curl ipinfo.io | findstr "country" >> informacoes.txt
curl ipinfo.io | findstr "region" >> informacoes.txt
curl ipinfo.io | findstr "postal" >> informacoes.txt
curl ipinfo.io | findstr "city" >> informacoes.txt
curl ipinfo.io | findstr "hostname" >> informacoes.txt
curl ipinfo.io | findstr "loc" >> informacoes.txt
curl ipinfo.io | findstr "org" >> informacoes.txt
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
@echo [!] Informacoes da Memoria Ram: >> informacoes.txt
@echo. >> informacoes.txt
wmic memorychip get Manufacturer,Capacity,PartNumber,Speed,DeviceLocator >> informacoes.txt
echo. >> informacoes.txt
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
netsh wlan show interfaces | findstr "Criptografia" >> informacoes.txt
netsh wlan show interfaces | findstr "Faixa" >> informacoes.txt
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

