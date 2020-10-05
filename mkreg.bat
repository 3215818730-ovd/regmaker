@echo off
set /p name=name
set /p file=filepath(double "\")
echo Windows Registry Editor Version 5.00 >%name%Client.reg
echo. >>%name%Client.reg
echo [HKEY_CLASSES_ROOT\%name%Client] >>%name%Client.reg
echo @="%name%ClientProtocol" >>%name%Client.reg
echo "URL Protocol"="" >>%name%Client.reg
echo. >>%name%Client.reg
echo [HKEY_CLASSES_ROOT\%name%Client\DefaultIcon] >>%name%Client.reg
echo @="%file%,1" >>%name%Client.reg
echo. >>%name%Client.reg
echo [HKEY_CLASSES_ROOT\%name%Client\shell] >>%name%Client.reg
echo @="" >>%name%Client.reg
echo. >>%name%Client.reg
echo [HKEY_CLASSES_ROOT\%name%Client\shell\open] >>%name%Client.reg
echo @="" >>%name%Client.reg
echo. >>%name%Client.reg
echo [HKEY_CLASSES_ROOT\%name%Client\shell\open\command] >>%name%Client.reg
echo @="\"%file%\" \"^%1\"">>%name%Client.reg
echo completed
pause