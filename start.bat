@ECHO off
CLS


REM Kazhord AstreliaWIFI - Build 2015-05-12
REM Source : http://www.kazhord.fr/

:SETUP

	ECHO.
	ECHO --------------------------
	ECHO ----- Start hotspot ------
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
	netsh wlan start hostednetwork

GOTO STEP2-END

:STEP2-END
	ECHO DONE !
	EXIT