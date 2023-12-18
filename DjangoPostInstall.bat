@echo off & setlocal DisableDelayedExpansion
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

::Fullscreen 

SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 1                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%
ECHO Wscript.Sleep 1                                    >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"


Title Django Post Install Script
color 0B
call :Logo

:filecheck
if not exist "C:\DjangoPostInstall\" mkdir C:\DjangoPostInstall
goto :Menu

:Menu
echo.
echo. 
echo Press 1 for Chrome 		 										 	
echo Press 2 for Winrar			 									
echo Press 3 for 7-Zip			                   
echo Press 4 for MSI Afterburner	                    
echo Press 5 for CapFrameX		         
echo Press 6 for NVCleanstall	                               
echo Press 7 for Spotify			 
echo Press 8 for DirectX
echo Press 9 for Visual C++
echo Press 10 for Installing Optimization Applications
echo Press 11 for Discord
echo Press 12 for OBS
echo Press 13 for HwInfo
echo Press 14 for MalwareBytes
echo. 
echo Press E to Exit... 


timeout /T -1 >NOBREAK

set /p input=
if %input% == 1 goto 1
if %input% == 2 goto 2
if %input% == 3 goto 3 
if %input% == 4 goto 4 
if %input% == 5 goto 5 
if %input% == 6 goto 6
if %input% == 7 goto 7
if %input% == 8 goto 8 
if %input% == 9 goto 9
if %input% == 10 goto 10
if %input% == 11 goto 11
if %input% == 12 goto 12
if %input% == 13 goto 13
if %input% == 14 goto 14
if %input% == E goto E
if %input% == e goto E

:misspell
cls
echo Misspell detected!
timeout 2 > nul
echo Redirecting to Menu...
timeout 2 > nul
clss
goto :Logo

:1
cls
Echo Downloading Chrome...
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091312926339633173/ChromeSetup.exe -Outfile C:\DjangoPostInstall\ChromeSetup.exe 
cls
goto :Logo

:2
cls
Echo Downloading winrar-x64-621
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091389068501340241/winrar-x64-621.exe -Outfile C:\DjangoPostInstall\winrar-x64-621.exe 
cls
goto :Logo

:3
cls
Echo Downloading 7-zip
powershell -Command "Invoke-WebRequest https://www.7-zip.org/a/7z2201-x64.exe -Outfile C:\DjangoPostInstall\7z2201-x64.exe 
cls
goto :Logo

:4
cls
Echo Downloading MSI Afterburner
powershell -Command "Invoke-WebRequest https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip?__token__=exp=1680428238~acl=/*~hmac=362e627d7026b153a93fcfb1f2307e27d96195eb37d18d87f9995a2de110b80b -Outfile C:\DjangoPostInstall\MSIAfterburnerSetup.zip
cls
goto :Logo

:5
cls
Echo Downloading CapFrameX
powershell -Command "Invoke-WebRequest https://cxblobs.blob.core.windows.net/releases/CapFrameX_v1.7.1_Setup.zip -Outfile C:\DjangoPostInstall\CapFrameX_v1.7.1_Setup.zip
cls
goto :Logo

:6
cls
Echo Downloading NVCleanstall
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091451969618583652/NVCleanstall_1.15.1.exe -Outfile C:\DjangoPostInstall\NVCleanstall_1.15.1.exe
cls
goto :Logo

:7
cls
Echo Downloading Spotify
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091465626272403506/SpotifySetup.exe -Outfile C:\DjangoPostInstall\SpotifySetup.exe
cls
goto :Logo

:8
if not exist "C:\DjangoPostInstall\Runtimes" mkdir C:\DjangoPostInstall\Runtimes
cls
Echo Downloading DirectX End User Runtimes 
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091466570464772179/dxwebsetup.exe -Outfile C:\DjangoPostInstall\Runtimes\dxwebsetup.exe
cls
Timeout /T 3 /NOBREAK >nul

start /wait C:\DjangoPostInstall\Runtimes\dxwebsetup.exe 
cls
goto :Logo

:9
if not exist "C:\DjangoPostInstall\Runtimes" mkdir C:\DjangoPostInstall\Runtimes
cls 
Echo Downloading Visual C++ Runtimes
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091469415784124577/vcredist2005_x64.exe -Outfile C:\DjangoPostInstall\Runtimes\vcredist2005_x64.exe
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091469416119681176/vcredist2005_x86.exe -Outfile C:\DjangoPostInstall\Runtimes\vcredist2005_x86.exe 
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091469533694406676/vcredist2008_x86.exe -Outfile C:\DjangoPostInstall\Runtimes\vcredist2008_x86.exe
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091469534105456703/vcredist2008_x64.exe -Outfile C:\DjangoPostInstall\Runtimes\vcredist2008_x64.exe
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091469916764385421/vcredist2013_x86.exe -Outfile C:\DjangoPostInstall\Runtimes\vcredist2013_x86.exe
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091469917154451477/vcredist2012_x64.exe -Outfile C:\DjangoPostInstall\Runtimes\vcredist2012_x64.exe
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091469917506764820/vcredist2012_x86.exe -Outfile C:\DjangoPostInstall\Runtimes\vcredist2012_x86.exe
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091469917976539257/vcredist2013_x64.exe -Outfile C:\DjangoPostInstall\Runtimes\vcredist2013_x64.exe
cls



timeout /T 3 /NOBREAK >nul


::From Tech Power Up==>
set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo 2005...
start /wait C:\DjangoPostInstall\Runtimes\vcredist2005_x86.exe /q

echo 2008...
start /wait C:\DjangoPostInstall\Runtimes\vcredist2008_x86.exe /q

echo 2010...
start /wait C:\DjangoPostInstall\Runtimes\vcredist2010_x86.exe /passive /norestart

echo 2012...
start /wait C:\DjangoPostInstall\Runtimes\vcredist2012_x86.exe /passive /norestart

echo 2015, 2017 ^& 2019...
start /wait C:\DjangoPostInstall\Runtimes\vcredist2015_2017_2019_2022_x86.exe /passive /norestart

cls

goto Lo

:X64

echo 2005...
start /wait C:\DjangoPostInstall\Runtimes\vcredist2005_x86.exe /q
start /wait C:\DjangoPostInstall\Runtimes\vcredist2005_x64.exe /q

echo 2008...
start /wait C:\DjangoPostInstall\Runtimes\vcredist2008_x86.exe /qb
start /wait C:\DjangoPostInstall\Runtimes\vcredist2008_x64.exe /qb

echo 2010...
:: start /wait C:\DjangoPostInstall\Runtimes\vcredist2010_x86.exe /passive /norestart
:: start /wait C:\DjangoPostInstall\Runtimes\vcredist2010_x64.exe /passive /norestart

echo 2012...
start /wait C:\DjangoPostInstall\Runtimes\vcredist2012_x86.exe /passive /norestart
start /wait C:\DjangoPostInstall\Runtimes\vcredist2012_x64.exe /passive /norestart

echo 2013...
start /wait C:\DjangoPostInstall\Runtimes\vcredist2013_x86.exe /passive /norestart
start /wait C:\DjangoPostInstall\Runtimes\vcredist2013_x64.exe /passive /norestart

echo 2015, 2017 ^& 2019 ^& 2022...
:: start /wait C:\DjangoPostInstall\Runtimes\vcredist2015_2017_2019_2022_x64.exe /passive /norestart
cls

goto :Lo

:Lo
goto :Logo


:10
cls
if not exist "C:\DjangoPostInstall\TweakingApps" mkdir C:\DjangoPostInstall\TweakingApps
Echo Downloading Important Apps
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091478390546116720/AutoRuns.exe -Outfile C:\DjangoPostInstall\TweakingApps\AutoRuns.exe
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091478399672913950/Device_Cleanup.exe -Outfile C:\DjangoPostInstall\TweakingApps\Device_Cleanup.exe 
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1091312744155856926/1091478437769789440/NSudoLG.exe -Outfile C:\DjangoPostInstall\TweakingApps\NSudoLG.exe
cls
goto :Logo


:11
cls
if not exist "C:\DjangoPostInstall\TweakingApps" mkdir C:\DjangoPostInstall\TweakingApps
Echo Installing Discord...
powershell -Command "Invoke-WebRequest https://discordapp.com/api/download?platform=win -OutFile C:\DjangoPostInstall\discord_setup.exe
cls
goto :Logo

:12
cls
if not exist "C:\DjangoPostInstall\TweakingApps" mkdir C:\DjangoPostInstall\TweakingApps
Echo Installing OBS...
powershell -Command "Invoke-WebRequest https://cdn-fastly.obsproject.com/downloads/OBS-Studio-27.1.3-Full-Installer-x64.exe -OutFile C:\DjangoPostInstall\obs_setup.exe

:13
cls
if not exist "C:\DjangoPostInstall\TweakingApps" mkdir C:\DjangoPostInstall\TweakingApps
Echo Installing HwInfo...
powershell -Command "Invoke-WebRequest https://downloads.malwarebytes.com/file/mb4_offline -OutFile C:\DjangoPostInstall\malwarebytes_setup.exe
cls
goto :Logo

:14
cls
if not exist "C:\DjangoPostInstall\TweakingApps" mkdir C:\DjangoPostInstall\TweakingApps
Echo Installing Malewarebytes...
powershell -Command Invoke-WebRequest https://www.hwinfo.com/files/hw64_730.exe -OutFile C:\DjangoPostInstall\hwinfo_setup.exe
cls
goto :Logo


:E 
cls
echo Thank You for using Django's Post Install Script!
timeout /t 3 /NOBREAK >NUL 
cls
echo Please Check your desktop for all installs by the name of "DjangoPostInstall"
echo If you can't find it, make sure to refresh your background
timeout /t 5 /NOBREAK >NUL
move "C:\DjangoPostInstall" "%userprofile%\Desktop"
exit  








:Logo


:::  _____  _                           _____          _     _____           _        _ _ 
::: |  __ \(_)                         |  __ \        | |   |_   _|         | |      | | |
::: | |  | |_  __ _ _ __   __ _  ___   | |__) |__  ___| |_    | |  _ __  ___| |_ __ _| | |
::: | |  | | |/ _` | '_ \ / _` |/ _ \  |  ___/ _ \/ __| __|   | | | '_ \/ __| __/ _` | | |
::: | |__| | | (_| | | | | (_| | (_) | | |  | (_) \__ \ |_   _| |_| | | \__ \ || (_| | | |
::: |_____/| |\__,_|_| |_|\__, |\___/  |_|   \___/|___/\__| |_____|_| |_|___/\__\__,_|_|_|
:::       _/ |             __/ |                                                          
:::      |__/             |___/                                                           
:::
::: 		  By Django#0308 (DjangoTweaks on Twitter)

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

goto :filecheck


pause



