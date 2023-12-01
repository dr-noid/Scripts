@echo off
call javaX-JAVA_HOME %1
setx JAVA_HOME "%JAVA_HOME%" /M
set Path=%JAVA_HOME%\bin;%Path%
echo %~1 activated as system-wide default.
