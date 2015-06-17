@ECHO off
CLS


REM Kazhord AstreliaWIFI - Build 2015-05-12
REM Source : http://www.kazhord.fr/

:SETUP

	ECHO.
	ECHO --------------------------
	ECHO ------ View hotspot ------
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
	netsh wlan show hostednetwork
	ping localhost -n 5 > nul
	CLS
GOTO SETUP