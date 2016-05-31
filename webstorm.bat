@echo off

SET WebStormPath=C:\Program Files (x86)\JetBrains\WebStorm 2016.1.2\bin\WebStorm64.exe

echo Adding file entries
@reg add "HKEY_CLASSES_ROOT\*\shell\Open in WebStorm" /t REG_SZ /v "" /d "Open in WebStorm"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open in WebStorm" /t REG_EXPAND_SZ /v "Icon" /d "%WebStormPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open in WebStorm\command" /t REG_SZ /v "" /d "%WebStormPath% \"%%1\"" /f

echo Adding folder entries
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open directory in WebStorm" /t REG_SZ /v "" /d "Open directory in WebStorm"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open directory in WebStorm" /t REG_EXPAND_SZ /v "Icon" /d "%WebStormPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open directory in WebStorm\command" /t REG_SZ /v "" /d "%WebStormPath% \"%%1\"" /f

pause
