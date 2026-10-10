@echo off
setlocal EnableExtensions EnableDelayedExpansion
cd /d "%~dp0"

where docker >nul 2>&1
if errorlevel 1 (
  echo CHYBA: Docker nebol najdeny. Nainstalujte a spustite Docker Desktop.
  goto :error
)

docker info >nul 2>&1
if errorlevel 1 (
  echo CHYBA: Docker Engine nie je dostupny. Spustite Docker Desktop a skuste to znova.
  goto :error
)

docker compose version >nul 2>&1
if errorlevel 1 (
  echo CHYBA: Prikaz "docker compose" nie je dostupny. Aktualizujte Docker Desktop.
  goto :error
)

set "APP_PORT=8080"
if exist ".env" (
  for /f "usebackq tokens=1,* delims==" %%A in (`findstr /R /V "^[ ]*#" ".env"`) do (
    if /I "%%A"=="APP_PORT" set "APP_PORT=%%B"
  )
)

echo Spustam aplikaciu na porte !APP_PORT!...
docker compose up -d --build
if errorlevel 1 (
  echo CHYBA: Kontajnery sa nepodarilo zostavit alebo spustit.
  goto :logs
)

echo Cakam, kym bude aplikacia pripravena...
set /a ATTEMPT=0

:wait_for_app
set /a ATTEMPT+=1
curl.exe --fail --silent --output nul "http://localhost:!APP_PORT!/" >nul 2>&1
if not errorlevel 1 goto :ready

if !ATTEMPT! GEQ 60 (
  echo CHYBA: Aplikacia nebola dostupna do 120 sekund.
  goto :logs
)

docker compose ps --status exited --services | findstr /X "web" >nul 2>&1
if not errorlevel 1 (
  echo CHYBA: Webovy kontajner sa predcasne zastavil.
  goto :logs
)

timeout /t 2 /nobreak >nul
goto :wait_for_app

:ready
echo Aplikacia je pripravena: http://localhost:!APP_PORT!/
start "" "http://localhost:!APP_PORT!/"
exit /b 0

:logs
echo.
echo Posledne logy kontajnera:
docker compose logs --tail=100 web

:error
echo.
echo Opravte uvedenu chybu a spustite start.bat znova.
pause
exit /b 1
