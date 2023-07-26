@echo off
echo Ejecutando sfc /scannow...
sfc /scannow

echo Ejecutando DISM /Online /Cleanup-image /Scanhealth...
DISM.exe /Online /Cleanup-image /Scanhealth

echo Ejecutando DISM /Online /Cleanup-Image /CheckHealth...
DISM.exe /Online /Cleanup-Image /CheckHealth

echo Ejecutando DISM /Online /Cleanup-image /Restorehealth...
DISM.exe /Online /Cleanup-image /Restorehealth

echo Ejecutando DISM /Online /Cleanup-Image /StartComponentCleanup...
DISM.exe /Online /Cleanup-Image /StartComponentCleanup

echo Proceso completado.
pause
