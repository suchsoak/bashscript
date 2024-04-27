pnputil /enum-devices /class Display | findstr "ID da Instância"
@echo.
@echo.
set/p ID= Coloque a ID da Instancia:
@echo.
@echo.
pnputil /restart-device "%ID%"

@echo.
set /p reiniciar= escolha uma opcao:
@echo.
if %reiniciar% equ s goto reiniciars 
if %reiniciar% equ n goto reiniciarn

if %reiniciar% equ nul (
  @echo.
  @echo Escolha uma opcao!
  @echo.
  @pause
) else (
  color 2
  @echo.
  @echo Opcao invalida!!
  @echo.
  @pause
  exit
)

:reiniciars

shutdown /r /c "O chefe mandou, vá descansar"

:reiniciarn

exit
