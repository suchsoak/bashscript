cls
@echo::::::::::::::::::::::::::::::::::::::::::::
wmic OS get name
@echo.
@echo:: [*] 1. Windows 11 Home
@echo:: [*] 2. Windows 11 Home N
@echo:: [*] 3. Windows 11 Home Home Single Language
@echo:: [*] 4. Windows 11 Country Specific
@echo:: [*] 5. Windows 11 Pro
@echo:: [*] 6. Windows 11 Pro N
timeout 2 >null
@echo:: [*] 7. Windows 11 Pro for Workstations
@echo:: [*] 8. Windows 11 Pro for Workstations N
@echo:: [*] 9. Windows 11 Pro Education
@echo:: [*] 10. Windows 11 Pro Education N
@echo:: [*] 11. Windows 11 Education
@echo:: [*] 12. Windows 11 Education N
@echo:: [*] 13. Windows 11 Enterprise
timeout 2 >null
@echo:: [*] 14. Windows 11 Enterprise N
@echo:: [*] 15. Windows 11 Enterprise G
@echo:: [*] 16. Windows 11 Enterprise G N
@echo:: [*] 17. Windows 11 Enterprise LTSC 2019
timeout 2 >null
@echo:: [*] 18. Windows 11 Enterprise N LTSC 2019


@echo:::::::::::::::::::::::::::::::::::::::::::: 

set /p sl=  escolha uma opcao: 

if %sl% equ 1 goto sl1
if %sl% equ 2 goto sl2
if %sl% equ 3 goto sl3
if %sl% equ 4 goto sl4
if %sl% equ 5 goto sl5
if %sl% equ 6 goto sl6
if %sl% equ 7 goto sl7
if %sl% equ 8 goto sl8
if %sl% equ 9 goto sl9
if %sl% equ 10 goto sl10
if %sl% equ 11 goto sl11
if %sl% equ 12 goto sl12
if %sl% equ 13 goto sl13
if %sl% equ 14 goto sl14
if %sl% equ 15 goto sl15
if %sl% equ 16 goto sl16
if %sl% equ 17 goto sl17
if %sl% equ 18 goto sl18

if %sl% equ nul (
  @echo.
  @echo Escolha uma opcao!!!
  @echo.
  @pause
) else (
  color 2
  @echo.
  @echo Opcao invalida!!!
  @echo.
  @pause
  exit
)

:sl1
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
@pause
exit
:sl2
slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
@pause
exit
:sl3
slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
@pause
exit
:sl4
slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
@pause
exit
:sl5
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
@pause
exit
:sl6
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
@pause
exit
:sl7
slmgr /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
@pause
exit
:sl8
slmgr /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF
@pause
exit
:sl9
slmgr /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
@pause
exit
:sl10
slmgr /ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
@pause
exit
:sl11
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
@pause
exit
:sl12
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
@pause
exit
:sl13
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
@pause
exit
:sl14
slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
@pause
exit
:sl15
slmgr /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B
@pause
exit
:sl16
slmgr /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV
@pause
exit
:sl17
slmgr /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
@pause
exit
:sl18
slmgr /ipk 92NFX-8DJQP-P6BBQ-THF9C-7CG2H
@pause
exit
