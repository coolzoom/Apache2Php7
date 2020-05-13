@echo off
echo Shutting down the Apache server.
website-bro\apache\bin\pv -f -k httpd.exe -q
if not exist website-bro\apache\logs\httpd.pid GOTO exit
del website-bro\apache\logs\httpd.pid

:exit
