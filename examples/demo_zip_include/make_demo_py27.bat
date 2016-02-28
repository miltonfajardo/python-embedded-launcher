set DIST=dist27
set PYTHONPATH=..\..
set PYTHONUSERBASE=%DIST%
if not exist wheelhouse  python -m pip wheel -r requirements.txt
python -m launcher_tool --raw -o %DIST%/miniterm_py27.exe
REM ~ python -m launcher_tool.resource_editor %DIST%/miniterm_py27.exe edit_strings --set 1:%%LOCALAPPDATA%%\python27-minimal
python -m launcher_tool.resource_editor %DIST%/miniterm_py27.exe write_icon icon.ico
python -m launcher_tool --append-only %DIST%/miniterm_py27.exe -e serial.tools.miniterm:main --add-zip wheelhouse\pyserial-3.0.1-py2.py3-none-any.whl