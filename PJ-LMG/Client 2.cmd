@echo off
Title Client 2
set P=1
mode con cols=45 lines=26
if not exist UsersData C:\Users\eveil\Desktop\PJ-LMG md UsersData
cd UsersData
:LM
echo ษออออออออออออออออออออออออออออออออออออออออออป
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo บ                                          บ
echo ศออออออออออออออออออออออออออออออออออออออออออผ
:OM
set ERL=%ERRORLEVEL%
if %ERL% NEQ %ERRORLEVEL% goto keys
for /f "Tokens=1,2 Delims=:" %%a in (USER_1) do (
set PX=%%a
set PY=%%b
)
for /f "Tokens=1,2 Delims=:" %%a in (USER_2) do (
set GX=%%a
set GY=%%b
)

batbox /g %PX% %PY% /d "#" /c 0x00
batbox /g %PX% %PY% /d "#" /c 0x0F
batbox /g %GX% %GY% /d "#" /c 0x0F /k_
if %errorlevel%==327 goto UP
if %errorlevel%==335 goto DOWN
if %errorlevel%==330 goto LEFT
if %errorlevel%==332 goto RIGTH
goto OM
:UP
batbox /g %GX% %GY% /c 0x00 /d "#" /c 0x0f
set /a GY=%GY%-1
echo %GX%:%GY%>USER_2
goto  OM
:DOWN
batbox /g %GX% %GY% /c 0x00 /d "#" /c 0x0f
set /a GY=%GY%+1
echo %GX%:%GY%>USER_2
goto  OM
:LEFT
batbox /g %GX% %GY% /c 0x00 /d "#" /c 0x0f
set /a GX=%GX%-1
echo %GX%:%GY%>USER_2
goto  OM
:RIGTH
batbox /g %GX% %GY% /c 0x00 /d "#" /c 0x0f
set /a GX=%GX%+1
echo %GX%:%GY%>USER_2
goto  OM





pause>nul
cls
goto loop