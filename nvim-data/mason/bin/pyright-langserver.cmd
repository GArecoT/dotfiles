@ECHO off
GOTO start
:find_dp0
SET dp0=%~dp0
EXIT /b
:start
SETLOCAL
CALL :find_dp0

endLocal & goto #_undefined_# 2>NUL || title %COMSPEC% & "C:\Users\estagio.startup06\AppData\Local\nvim-data\mason\packages\pyright\node_modules\.bin\pyright-langserver.cmd" %*