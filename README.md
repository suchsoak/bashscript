# bashscript
![BASH](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)

![WINDOWS](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)

>[!IMPORTANT]
> Execute o Script como Administrador

### Bash scripts para facilitar sua vida e também para se divertir

**Para simplificar seu uso, tomei a decisão de combinar meus scripts bash, que antes eram separados.**

>[!NOTE]
>Por enquanto a apenas 4 script. Porém, pretendo colocar mais. Enquanto isso se quiser mais opções de script vá no meu outro github com scrips escritos em powershell
>
>https://github.com/suchsoak/Powershell_script


<details>

<summary>Windows Update</summary>

Para explicar o script, ele irar verificar como o comandos do net recursos do windows update para tudo ocorrer bem. Caso esteja tenho problemas como o windows update, pode para eles usando o stop no start assim você reinicia o seu sistema. Ai verifica se tudo está certo.

```sh

net start bits
net start wuauserv
net start cryptSvc
net start msiserver

SC config wuauserv start= auto 

SC config bits start= auto 

SC config cryptsvc start= auto 
SC config trustedinstaller start= auto
net start bits
net start wuauserv
net start cryptSvc
net start msiserver

SC config wuauserv start= auto 

SC config bits start= auto 

SC config cryptsvc start= auto 
SC config trustedinstaller start= auto

```

`net start bits`: Este comando inicia o serviço Background Intelligent Transfer Service (BITS). O BITS é um serviço do Windows que facilita a transferência assíncrona, priorizada e limitada de arquivos entre máquinas usando a largura de banda da rede ociosa.

`net start wuauserv`: Este comando inicia o serviço Windows Update (wuauserv). O serviço Windows Update é responsável por gerenciar e fornecer atualizações para o sistema operacional Windows.

`net start cryptSvc`: Este comando inicia o serviço Cryptographic Services (cryptSvc). O serviço Cryptographic Services fornece funções criptográficas essenciais para o Windows, como criptografia, descriptografia e operações com certificados.

`net start msiserver`: Este comando inicia o serviço Windows Installer (msiserver). O serviço Windows Installer é responsável por instalar, modificar e remover pacotes de software no formato MSI (Microsoft Installer).

`SC config wuauserv start= auto`: Este comando usa o comando SC (Service Control) para configurar o tipo de inicialização do serviço Windows Update (wuauserv) como automático. Configurar o tipo de inicialização como automático garante que o serviço seja iniciado automaticamente quando o sistema inicializar.

`SC config bits start= auto`: Este comando usa o comando SC para configurar o tipo de inicialização do serviço Background Intelligent Transfer Service (bits) como automático. Configurar o tipo de inicialização como automático garante que o serviço seja iniciado automaticamente quando o sistema inicializar.

`SC config cryptsvc start= auto`: Este comando usa o comando SC para configurar o tipo de inicialização do serviço Cryptographic Services (cryptsvc) como automático. Configurar o tipo de inicialização como automático garante que o serviço seja iniciado automaticamente quando o sistema inicializar.

`SC config trustedinstaller start= auto`: Este comando usa o comando SC para configurar o tipo de inicialização do serviço TrustedInstaller (trustedinstaller) como automático. O serviço TrustedInstaller é responsável por instalar, modificar e remover atualizações do Windows e componentes opcionais.

</details>


<details>

<summary>Reset-Para-Netsh</summary>

# Resetar-Configurações-Da-Internet-No-Computador.

Abra o Script como Administrador

 Um script Bat, que resetar configurações e portas como TCP. Do computador, Caso esteja tendo problemas com internet no computador ou notbook.

> Aplica-se a: Windows Server 2022, Windows Server 2019, Windows Server 2016, Azure Stack HCI, versões 21H2 e 20H2

# Como Usar

Via terminal:

```sh
  start Reset_net.bat 
```

Via Sistema Operacional Gráfico:

```sh
  Execute o arquivo como Admistrador! 
```

# Codigos utilizados:
> Shell de Rede (netsh)

<ul>
<li>netsh winsock reset all</li>
<li>netsh int 6to4 reset all</li>
<li>netsh int ipv4 reset all</li>
<li>netsh int ipv6 reset all</li>
<li>netsh int httpstunnel reset all</li>  
<li>netsh int isatap reset all</li>  
<li>netsh int portproxy reset all</li>  
<li>netsh int tcp reset all</li>  
<li>netsh int teredo reset all</li> 
<li>ipconfig /renew</li>
<li>nnetsh advfirewall firewall add rule name="Block 22" dir=in action=block protocol=TCP localport=22</li>
<li>netsh advfirewall firewall add rule name="Block 23" dir=in action=block protocol=TCP localport=23</li>
<li>netsh advfirewall firewall add rule name="Block 80" dir=in action=block protocol=TCP localport=80</li>

</ul>

# Mais informações sobre os comandos utilizados:

| Libraries |  Links |
| ------ | ------ |
|  shell de rede|  [https://learn.microsoft.com/pt-br/windows/win32/wmisdk/wmic](https://learn.microsoft.com/pt-br/windows-server/networking/technologies/netsh/netsh)
|  Netsh | [https://learn.microsoft.com/pt-br/windows-server/networking/technologies/netsh/netsh](https://learn.microsoft.com/pt-br/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc754516(v=ws.10)) 
|  Ipconfig|  [https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/ipconfig](https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/ipconfig)
 
</details>

<details>

<summary>Systeminfo simplificado</summary>

# Um systeminfo simplificado

O intuito do script é ter informações sobre seu Desktop pessoal.

# Como usar:

Para utilizar o script, baixe ele em arquivo zipado ou por linha de comando (cmd)

Execute ele de preferencia como administrador.

# Via cmd windows:

> Já com o Informações.bat instalado, execute no terminal se preferir:

```sh
 start Informações.bat
```

# Sobre o script

O script irar retornar informações sobre: 

processador

```sh

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

```

Disco

```sh

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

```
Informações De Rede

```sh

@echo [!] Informacoes De Rede:
@echo.
timeout /t 6 > null
color 8
netsh interface ipv4 show addresses "Wi-Fi" | findstr "Endereço IP"
netsh wlan show interfaces | findstr "Perfil"
netsh wlan show interfaces | findstr "Estado"
netsh wlan show interfaces | findstr "Sinal"
netsh wlan show interfaces | findstr "Canal"
netsh wlan show interfaces | findstr "Descrição"
netsh wlan show interfaces | findstr "BSSID"
color 7
@echo.
@echo --------------------

```

Para obter informações do ip e relacionado a endereço, foi utilizado o curl junto como o ipinfo.io

```sh

curl -s ipinfo.io | findstr "ip"
curl -s ipinfo.io | findstr "country"
curl -s ipinfo.io | findstr "region"
curl -s ipinfo.io | findstr "postal"
curl -s ipinfo.io | findstr "city"
curl -s ipinfo.io | findstr "hostname"
curl -s ipinfo.io | findstr "loc"
curl -s ipinfo.io | findstr "org"

```

E outras informações adicionais, como placa de video, endereço ip, Proprietário registrado e etc.

# As informações serão arquivadas em um arquivo informacoes.txt

```sh

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

```

## Pesquisas Relacionadas:

| Libraries |  Links |
| ------ | ------ |
|  Wmic |  https://learn.microsoft.com/pt-br/windows/win32/wmisdk/wmic
|  Netsh | https://learn.microsoft.com/pt-br/windows-server/networking/technologies/netsh/netsh 
| Comandos | https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/windows-commands 


</details>

<details>

<summary>Verificadores De Disco</summary>


# HD_Verificadores_Bat

Abra o arquivo.bat como adiminstrador.

> Verificadores Para Profissionais De Ti. Um simples script para verificar arquivos do hd ou ssd.

<p align="center">
  <img src="https://github.com/suchsoak/bashscript/blob/main/diskimg/disk.png" alt="disk.png">
</p>

# Como usar

```sh
  start Verificadores.bat
```

### Codigos Utilizados.

<ul>
<li>Sfc /ScanNow</li>
<li>dism /online /cleanup-image /scanhealth</li>
<li>dism /online /cleanup-image /restorehealth</li>
<li>dism /Online /Cleanup-Image /CheckHealth</li>
<li>chkdsk</li>  
<li>wmic</li>  
<li>del *</li>  
</ul>

## Documentação Dos Codigos Utilizados:

| Libraries |  Links |
| ------ | ------ |
| verificador |   https://support.microsoft.com/pt-br/topic/use-a-ferramenta-verificador-de-arquivos-do-sistema-para-reparar-arquivos-de-sistema-ausentes-ou-corrompidos-79aa86cb-ca52-166a-92a3-966e85d4094e
|  chkdsk | https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/chkdsk?tabs=event-viewer
| Repair | https://learn.microsoft.com/pt-br/windows-hardware/manufacture/desktop/repair-a-windows-image?view=windows-11
| wmic | https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/wmic


</details>

License & Copyright
-----------------------
MIT License Copyright (c) 2023 ~#M?x

![LOVE](http://ForTheBadge.com/images/badges/built-with-love.svg)


[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/m100047r)

