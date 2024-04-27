# bashscript
![BASH](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)

![WINDOWS](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)

>[!IMPORTANT]
> Execute o Script como Administrador

### Bash scripts para facilitar sua vida e também para se divertir

**Para simplificar seu uso, tomei a decisão de combinar meus scripts bash, que antes eram separados.**

>[!NOTE]
>Por enquanto a apenas 7 script. Porém, pretendo colocar mais. Enquanto isso se quiser mais opções de script vá no meu outro github com scrips escritos em powershell
>
>https://github.com/suchsoak/Powershell_script

<details>

<summary>Marca Windows</summary>


Este script ele irá limpar o cache da chave windows o que você terar que colocar novamente caso utilize o script. Este script permite também, fazer com que aquela marca do windows: "Ative o windows", ela simplesmente desapareça quando reiniciar a maquina quando o script tiver sido utilizado.

`SLMGR.VBS /CPKY`: Este comando é usado para limpar a chave do produto do registro do Windows. Ele remove a chave do produto sem desinstalá-la do sistema. Isso pode ser útil para impedir que programas maliciosos acessem a chave do produto por meio do registro.

`SLMGR.VBS /CKMS`: Este comando é usado para limpar o nome do servidor de Gerenciamento de Chaves (KMS) usado para ativação. O KMS é um serviço da Microsoft que permite que organizações ativem seus sistemas operacionais Windows usando um servidor de rede local em vez de chaves de produto individuais. Este comando limpa o nome do servidor KMS, o que significa que o sistema não usará mais o KMS para ativação.

`Net stop Sppsvc`: Este comando interrompe o serviço de Plataforma de Proteção de Software (Sppsvc). O Sppsvc é responsável por gerenciar a licença e ativação de software em sistemas Windows. Parar esse serviço pode ser útil em determinados cenários de solução de problemas ou ao realizar tarefas de manutenção específicas.

`CD C:\Windows\System32\SPP\Store\2.0`: Este comando muda o diretório atual para a localização especificada. Neste caso, ele muda para a pasta "C:\Windows\System32\SPP\Store\2.0". Essa pasta é onde os arquivos de licença do Windows são armazenados.

`Ren Tokens.dat Tokens.old`: Este comando renomeia o arquivo "Tokens.dat" para "Tokens.old". Isso pode ser útil para fazer backup do arquivo original ou para resolver problemas relacionados à ativação do Windows.

`SLMGR.VBS /RILC`: Este comando reativa a licença de software do Windows. Ele reconstrói a licença de software no sistema, o que pode ser útil se a ativação do Windows estiver enfrentando problemas.

| Marca d'água solicitando ativação do Windows |  Link |
| ------ | ------ |
|  Marca windows  | https://answers.microsoft.com/pt-br/windows/forum/all/marca-d%C3%A1gua-solicitando-ativa%C3%A7%C3%A3o-do/2ca8e29c-a54c-4498-baa6-22b04aa2b81c  


</details>


<details>

<summary>Windows Update</summary>

Para explicar o script, ele irar verificar como o comandos do net recursos do windows update para tudo ocorrer bem. Caso esteja tenho problemas como o windows update, pode para eles usando o stop no start assim você reinicia o seu sistema. Ai verifica se tudo está certo.

> Os comandos com o "SC" funcionam apenas no terminal CMD windows, não funcionam no powershell. Já os demais como o net funcioname nos dois sem problema.

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
<li>netsh advfirewall firewall add rule name="Block %porta%" dir=in action=block protocol=TCP localport=%porta% </li>
</ul>

# Mais informações sobre os comandos utilizados:

| Libraries |  Links |
| ------ | ------ |
|  shell de rede|  [https://learn.microsoft.com/pt-br/windows/win32/wmisdk/wmic](https://learn.microsoft.com/pt-br/windows-server/networking/technologies/netsh/netsh)
|  Netsh | [https://learn.microsoft.com/pt-br/windows-server/networking/technologies/netsh/netsh](https://learn.microsoft.com/pt-br/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc754516(v=ws.10)) 
|  Ipconfig |  [https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/ipconfig](https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/ipconfig)
 
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
 start Informacoes.bat
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
Memoria Ram

```sh
@echo [!] Informacoes da Memoria Ram:
@echo.
wmic memorychip get Manufacturer,Capacity,PartNumber,Speed,DeviceLocator
echo.
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
netsh wlan show interfaces | findstr "Criptografia"
netsh wlan show interfaces | findstr "Faixa"
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
<li>cd %temp%</li> 
<li>del /F /Q *</li>  
</ul>

## Documentação Dos Codigos Utilizados:

| Libraries |  Links |
| ------ | ------ |
| verificador |   https://support.microsoft.com/pt-br/topic/use-a-ferramenta-verificador-de-arquivos-do-sistema-para-reparar-arquivos-de-sistema-ausentes-ou-corrompidos-79aa86cb-ca52-166a-92a3-966e85d4094e
| chkdsk | https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/chkdsk?tabs=event-viewer
| Repair | https://learn.microsoft.com/pt-br/windows-hardware/manufacture/desktop/repair-a-windows-image?view=windows-11
| del /F /Q * | https://answers.microsoft.com/pt-br/windows/forum/all/como-forçar-o-delete-de-uma-pasta-no-windows/86d37617-6ec9-4c0f-b219-0d299a6e3d42
| wmic | https://learn.microsoft.com/pt-br/windows-server/administration/windows-commands/wmic


</details>

<details>

<summary>Resetar Drive Video</summary>

## Esse pequeno script vai reiniciar o drive de vídeo

```sh
pnputil /enum-devices /class Display | findstr "ID da Instância"
pnputil /restart-device "%ID%"
```
### O segredo está nesses `2 comandos` que utilizando a ferramenta pnputil você pode reinicar o drive de vídeo, caso esteja tendo algum problema relacionado. ou pode muito bem utilizar o atalho do telcado `CTRL+SHIFT+WINDOWS+B`

</details>

<details>

<summary>HR CODE</summary>

### Esse pequeno script vai gerar um `hq code` do link que você fornecer.

>Parte do código
```sh
curl qrenco.de/%qr%
```

<p align="center">
  <img src="https://github.com/suchsoak/bashscript/blob/main/diskimg/HQCODE.png" alt="HRCODE.png">
</p>

</details>

License & Copyright
-----------------------
`MIT License Copyright (c) 2024 ~#M?x`

![LOVE](http://ForTheBadge.com/images/badges/built-with-love.svg)


[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/m100047r)

