@echo off
setlocal

set VENV_DIR=venv
set PACKAGE=krypto_gui_smalk

if not exist "%VENV_DIR%" (
    echo Creating venv...
    python -m venv %VENV_DIR%
    echo Updating pip...
    call %VENV_DIR%\Scripts\activate.bat
    python -m pip install --upgrade pip
    echo Installing %PACKAGE%...
    python -m pip install %PACKAGE%
    call deactivate
) else (
    echo venv already exists.
)

REM
echo Starting %PACKAGE%...
call %VENV_DIR%\Scripts\activate.bat
python -m pip install --upgrade %PACKAGE%
python -m pip install --upgrade %PACKAGE%
krypto_gui_smalk
call deactivate

endlocal
