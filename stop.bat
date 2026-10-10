@echo off
setlocal EnableExtensions
cd /d "%~dp0"

where docker >nul 2>&1
if errorlevel 1 (
  echo CHYBA: Docker nebol najdeny.
  goto :error
)

docker info >nul 2>&1
if errorlevel 1 (
  echo CHYBA: Docker Engine nie je dostupny. Spustite Docker Desktop.
  goto :error
)

echo Zastavujem aplikaciu...
docker compose down
if errorlevel 1 (
  echo CHYBA: Aplikaciu sa nepodarilo korektne zastavit.
  goto :error
)

echo Aplikacia bola zastavena. Ulozene Docker volumes zostali zachovane.
exit /b 0

:error
echo.
pause
exit /b 1
