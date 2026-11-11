@echo off
setlocal

set "PROJECT_DIR=%~dp0..\.."
for %%I in ("%PROJECT_DIR%") do set "PROJECT_DIR=%%~fI"

if exist "%PROJECT_DIR%\venv" rmdir /s /q "%PROJECT_DIR%\venv"

python -m venv "%PROJECT_DIR%\venv"
if errorlevel 1 exit /b 1

call "%PROJECT_DIR%\venv\Scripts\activate.bat"
if errorlevel 1 exit /b 1

python -m pip install -r "%PROJECT_DIR%\requirements.txt"
if errorlevel 1 exit /b 1

endlocal
