@shift /0
@echo off
chcp 65001 >nul
title ACE.SLN @%USERNAME% %time%
color 4                                                      
mode con lines=20 cols=70 >nul
:login
type logo.py 

set /p user=[+]   [37mUsername: 
			echo.
			color 4
			set /p pass=[+]   [37mPassword: 
				cls
				color 4
				echo Trying Login with username %user%
					title Checking.
					timeout 1 >nul
					title Checking..
					timeout 1 >nul
					title Checking...
					timeout 4 >nul
						if %user% == root if %pass% == root goto menu
						echo Wrong, Try again...
						timeout 3 >nul
							cls
							goto login




:menu
title ACE.SLN @%USERNAME% %time%
cls
type logo.py


echo       ╔══════════════════════════════════════════════════════╗
echo       ║            1. Ip attack  2. Look up                  ║
echo       ║            3. PortScan   4. RemeDesk                 ║
echo       ║            5. PCMSG      6. logger          next     ║
echo       ╚══════════════════════════════════════════════════════╝           

              ===============
set /p choice= [37m[ACE@%USERNAME%]: 
              ===============
if "%choice%"=="1" goto method
if "%choice%"=="2" goto lookupip
if "%choice%"=="3" goto PORT
if "%choice%"=="4" goto remdesk
if "%choice%"=="5" goto compmessage
if "%choice%"=="6" goto Logger
if "%choice%"=="next" goto page
:method 
cls
type logo.py
goto :pingip                                      





:pingip
color 4
cls
set /p ip=IP [ACE@%USERNAME%]: 
ping %ip% -n 4 
goto menu

:lookupip
color 4
cls
set /p ip=Enter IP address to look up:
cls
nslookup %ip%
pause
goto menu
cls

goto menu

:PORT
color 4
cls
start PortScanner.bat
goto menu


:remdesk
color 4
	echo.
	echo [+] OPEN REMOTE DESKTOP CONNECTION [+]
	echo.
	MSTSC
		pause
		goto menu


:compmessage
color 4
    cls
    set prevmenu=7
    echo Enter Computer name you want to message
    set /p MsgName=[+] : 
    if %MsgName%=='' goto 7_2
        :7_2
        cls
        echo Enter message you want to send:
        set /p MsgMessage=[+] : 
        if %MsgMessage%=='' goto 7_3
            :7_3
            cls
            msg %MsgName% %MsgMessage%
            echo.
            echo 1. Back to PC Messager
            echo 0. Back to main
            echo.
            set /p ghr=[+] : 
            if %ghr% == 0 goto Menu
            if %ghr% == 1 goto compmessage



:Logger
color 4
set /p name=[34m[ACE-[31mLogger Name/[31m
echo [35m
if %name% == 1 goto LOGGED IPS
set /p IP=[34mACE-[31mLogger IP/[31m
echo %name%    %IP%  -  %date% %time%>> LOGGED IPS.txt
echo.
echo [31m                                  Name And IP Was LOGGED!
pause
cls 
goto menu

:page
cls
mode con lines=20 cols=70 >nul
type logo.py
echo   ╔═══════════════════════════════════════════════════════════════════════════╗
echo   ║ 1. ListHackingWebsite    6. Web crasher       11. View all pc in Network  ║
echo   ║ 2. Web Tracker           7. Random Text Gen   12. Remote Desktop          ║
echo   ║ 3. Cyber Map             8. PC Messager       13. All NET CMD             ║
echo   ║ 4. Crack RAR Password    9. Remote Shutdown   14. System Info             ║
echo   ║ 5. Calculator            10. Rename File      15. Mode SSH                ║
echo   ║                                                                           ║
echo   ║ Back page: Back             99. Credits                  Next Page: Next  ║
echo   ╚═══════════════════════════════════════════════════════════════════════════╝
echo.
              ===============
set /p choice= [37m[ACE@%USERNAME%]: 
              ===============
if %pick% == 1 goto listhackweb
if %pick% == 2 goto ddostools
if %pick% == 3 goto cmap
if %pick% == 4 goto crackzip
if %pick% == 5 goto calculator
if %pick% == 6 goto web_crasher
if %pick% == 7 goto randgen
if %pick% == 8 goto compmessage
if %pick% == 9 goto shutdin
if %pick% == 10 goto renfile
if %pick% == 11 goto allpcnetwork
if %pick% == 12 goto remdesk
if %pick% == 13 goto allnetcmd
if %pick% == 14 goto systemin
if %pick% == 15 goto modeSSH
if %pick% == 99 goto credits
if %pick% == back goto Main
if %pick% == Back goto Main
if %pick% == Next goto Main3
if %pick% == next goto Main3
echo Wrong...
timeout 3 >nul
goto menu


:setpc
cls
	set
	pause
	goto Main3




:timechanger
cls
	TIME
	pause
	goto Main3





:datechange
cls
	DATE
	pause
	goto Main3




:tasklists
cls
	tasklist
	pause
	goto Main3


:modewmic
echo Are you sure want Mode WMIC?
set /p yn=[Y/N]: 
	if %yn% == Y goto wmicmod
	if %yn% == N goto Main3
	echo Wrong...
	timeout 3 >nul
	goto modewmic

:wmicmod
	cls
	title Mode_WMIC
	echo IF U WANT QUIT TYPE: "QUIT"
	WMIC
	pause

:modedev
	MODE
	pause
	goto Main3




:winve
winver
	pause
	goto Main3





:modeSSH
    cls
    set prevmenu=24
        title (SSH Mode)
            echo.
            echo Entering SSH Mode, Purely runs SSH commands.
                SSH
                goto modssh

:modssh
echo 0. Back to Main
    set /p sshinput=Night: 
    if %sshinput% == 0 goto Main2
    SSH %sshinput%
    pause
    goto modssh





:systemin
	systeminfo
        pause
        goto Main2




:allnetcmd
    cls
    echo.
    echo Here is a list of commands:
    NET
    echo.
    pause
    goto Main2





:remdesk
	echo.
	echo [+] OPEN REMOTE DESKTOP CONNECTION [+]
	echo.
	MSTSC
		pause
		goto Main2





:allpcnetwork
    title Night Tools
        echo.
        echo Enter the domain name you would like to view.
        echo.
        set /p networkviewinput=[+] :
        echo.
        net view /all /domain %networkviewinput%
        echo.
        
        pause
        goto Main2




:shutdin
	cls
    	title Night Tools
        echo.
        echo.
        echo Enter computer name.
        set /p "pcinput=>[+] : 
        goto confe

            :confe
                shutdown /s /p /m \\computer %pcinput% > "shutdownLogs.txt"
                echo Successfully shutdown %pcinput%! Returning to Main...
                timeout 4 >nul
                goto Main2




:renfile
    cls
        echo.
        echo Enter the file path of the file you want to rename, please include the file and the proper file extension.
            set /p "reliantfilerenamerpath=[+] : 
                echo.
                echo Enter the name you want to rename the file to.
                set /p "filerenameinput=[+] : 
                ren "%reliantfilerenamerpath%" %filerenameinput%
                cls
                echo.
                echo File renamed! Returning to the main menu.
                timeout /t 3 /nobreak >nul
                goto Main2




:randgen
title Random text generator
    cls
        echo.
        echo ============================
        echo Generated Number: %random%
        echo ============================
        echo.
        
        pause
        goto Main2





:compmessage
    cls
    set prevmenu=7
    title Night Tools
    echo Enter Computer name you want to message
    set /p MsgName=[+] : 
    if %MsgName%=='' goto 7_2
        :7_2
        cls
        echo Enter message you want to send:
        set /p MsgMessage=[+] : 
        if %MsgMessage%=='' goto 7_3
            :7_3
            cls
            msg %MsgName% %MsgMessage%
            echo.
            echo 1. Back to PC Messager
            echo 0. Back to main
            echo.
            set /p ghr=[+] : 
            if %ghr% == 0 goto Main2
            if %ghr% == 1 goto compmessage




:calculator
TITLE Calculator
    cls
    set prevmenu=12
        title Simple calculator by NothingGL
            echo ---------------------------
            echo Simple Calculator
            echo.
            echo Answer: %sum% = [ %ans% ]
            echo.
            echo Example: 2+2 and hit enter.
            echo.
            echo      0. Back to main
            echo ---------------------------
            echo.
                set /p sum=[+] Night: 
                if %sum% == 0 goto Main2
                set /a ans=%sum%
                    echo.
                    echo = %ans%
                    echo --------------------------------------------------------------
                        cls
                        goto calculator

:crackzip
title Crack .zip, .rar file
	mode con lines=22 cols=96
	color a
	cls
		echo.
		echo " Put your rar files Copy bellow "
		echo " [ C:\Users\%username%\OneDrive\Desktop\NightProject\Tools\CrackZIP\Recovery ] "
		echo.
		set /p redy=[!] Done? Y/N: 
		if %redy% == Y goto crackzo
		if %redy% == N goto Main2
		echo Wrong...
			timeout 2 >nul
			goto crackzip

:crackzo
start Tools/CrackZIP/Kraken.exe
	goto Main2





:cmap
start https://www.fireeye.com/cyber-map/threat-map.html
	goto Main2





:ddostools
title DDoS Tools by NothingGL : Version: 1
	color a
	cls
	echo.
	echo ████████╗ ██████╗  ██████╗ ██╗     ███████╗
	echo ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
	echo    ██║   ██║   ██║██║   ██║██║     ███████╗
	echo    ██║   ██║   ██║██║   ██║██║     ╚════██║
	echo    ██║   ╚██████╔╝╚██████╔╝███████╗███████║
	echo    ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
	echo.
    	echo 1. Server
		echo 0. Back to Main
		echo.
			set /p tar=[+] Server: 
			if %tar% == 1 goto server
			if %tar% == 0 goto Main
				goto ddostools



:server
title Tracker
	color a
	cls
	echo.
	echo  "   0. Back to main   "
	echo.
		set /p trace=[+] Night [URL]: 
		if %trace%==0 goto Main2
		if "%trace%"=="%trace%" goto trace





:trace
color a
	tracert %trace%
	echo.
	echo    -- IP Over This Text --
	echo     Copy It If You Want It
	echo.
		pause
		goto Main2





:listhackweb
title List hacking website
	color a
	cls
	echo.
		type logo.py
		echo.
			echo ╔═════════════════════════╗
			echo ║ 1. Hackin9              ║
			echo ║ 2. pentestmag           ║
			echo ║ 3. malwaredevil         ║
			echo ║ 4. Hackforums           ║
			echo ║ 0. Back to Main         ║
			echo ╚═════════════════════════╝
			echo.
				set /p inp=[+] Night: 
				if %inp% == 1 goto hackin9
				if %inp% == 2 goto pentestmag
				if %inp% == 3 goto malwaredevil
				if %inp% == 4 goto hackforums
				if %inp% == 0 goto Main2
				echo Wrong...
					timeout 3 >nul
						goto listhackweb




:hackin9 
start https://hakin9.org/
	goto Main2




:pentestmag
start https://pentestmag.com/
	goto Main2




:malwaredevil
start https://www.malwaredevil.com/2
	goto Main2




:hackforums
start https://hackforums.net/
	goto Main2



:exploweb
start https://www.kitploit.com/
	goto Main



:igfoll
start https://pastebin.com/aVFQUKNE
	goto Main




:putty
echo Open Putty...
	timeout 1 >nul
	start putty
		goto Main



:ippinger
start Tools\NothingPing.exe
	goto Main




:checkerproxy
start Tools\ProxChecker\ProxyChecker.exe
	goto Main





:stresser
start Tools\Night.py
	goto Main



:bat2exe
start Tools\Bat_To_Exe_Converter
	echo Wait....
		timeout 4 >nul
			goto Main






:portscanner
start Tools\Pscan
	goto Main





:iplookup
start Lookup.exe
timeout 1 >nul
goto Main



:loookup
start lookup.py
	goto Main2




:nitsniper
start Tools\snip.py
	goto Main