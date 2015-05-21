@ECHO off
CLS


REM Kazhord AstreliaWIFI - Build 2015-05-12
REM Source : http://www.kazhord.fr/

:SETUP

	ECHO.
	ECHO --------------------------
	ECHO ---- Create hotspot ------
	ECHO --------------------------
	ECHO.
	ECHO http://www.kazhord.fr/
	ECHO.
	ECHO Please report any bugs you find
	ECHO.
	ECHO ----------
	ECHO.

GOTO STEP1-INIT

:STEP1-INIT

	ECHO SSID :
	SET /p ssid=
	ECHO PASSWORD :
	SET /p password=


GOTO STEP2-GO

:STEP2-GO

	netsh wlan set hostednetwork mode=allow ssid="%ssid%" key="%password%"
	netsh wlan start hostednetwork
	ECHO Hotspot up ! SSID : %ssid% - Password : %password%

GOTO STEP3-END

:STEP3-END
	PAUSE
	EXIT