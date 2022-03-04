@echo off
rem Exit this batch file if file config.json does not exist in current directory.
if not exist data/config_default.json goto :EOF

copy data\config_default.json data\config_live.json
spiffsgen.exe 1507328 data spiffs.bin
pause