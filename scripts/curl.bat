cls
@echo.
@echo.
set /p qr= Coloque o link:
@echo.
@echo.
timeout 2 >null
curl qrenco.de/%qr%
@pause
