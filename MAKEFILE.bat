@ECHO OFF

ECHO Batch: Running NMLC compiler
%~dp0\nmlc\nmlc -l lang --grf probability_test.grf probability_test.nml

set /P c=Complete!
if /I "%c%" EQU "TT" (goto :copy
) else (exit)

:copy
ECHO Copying to NewGRF directory
copy /y /v %~dp0\probability_test.grf C:\Users\train\Documents\OpenTTD\newgrf\
pause
exit
