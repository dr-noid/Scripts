@echo off
call javaX-JAVA_HOME %1
set Path=%JAVA_HOME%\bin;%Path%
echo %~1 activated.
