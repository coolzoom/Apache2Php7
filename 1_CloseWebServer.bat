@echo off
echo Shutting down the Apache server.
website7\apache\bin\pv -f -k httpd.exe -q
if not exist website7\apache\logs\httpd.pid GOTO exit
del website7\apache\logs\httpd.pid

:exit
