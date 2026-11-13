rem
@echo off
cd /d "%~dp0"
chcp 65001 >nul
set PYTHONIOENCODING=utf-8

echo [Step 1] Checking update_sc_cdb.py ...
if exist "update_sc_cdb.py.txt" ren "update_sc_cdb.py.txt" "update_sc_cdb.py"
if not exist "update_sc_cdb.py" goto :no_script

echo [Step 2] Testing Python runtime ...
py -3 -V >nul 2>nul
if %errorlevel% equ 0 goto :run_py

python -V >nul 2>nul
if %errorlevel% equ 0 goto :run_python

goto :no_python

:run_py
echo [Step 3] Running with py -3 ...
py -3 -u -c "import update_sc_cdb as m; m.convert_cdb(m.fetch_ygocdb_mapping())"
goto :end

:run_python
echo [Step 3] Running with python ...
python -u -c "import update_sc_cdb as m; m.convert_cdb(m.fetch_ygocdb_mapping())"
goto :end

:no_script
echo [ERROR] Cannot find update_sc_cdb.py in folder: "%cd%"
goto :end

:no_python
echo [ERROR] No valid Python found! (Earlier blank output was caused by Windows Store dummy python.exe)
goto :end

:end
echo.
pause