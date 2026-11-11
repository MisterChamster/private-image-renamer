@echo off
setlocal

set "PROJECT_DIR=%~dp0..\.."
for %%I in ("%PROJECT_DIR%") do set "PROJECT_DIR=%%~fI"

call "%PROJECT_DIR%\venv\Scripts\activate.bat"

python "%PROJECT_DIR%\main.py"

endlocal
