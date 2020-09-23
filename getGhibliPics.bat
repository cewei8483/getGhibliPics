@echo off
setlocal EnableDelayedExpansion
setlocal enableextensions

set count=50
set animeList=marnie,kaguyahime,ged,kazetachinu,kokurikozaka,karigurashi,ponyo,chihiro

::currently released (20200921): marnie,kaguyahime,ged,kazetachinu,kokurikozaka,karigurashi,ponyo,chihiro

::all anime names: red-turtle,marnie,kaguyahime,kazetachinu,kokurikozaka,karigurashi,ponyo,ged,howl,nekonoongaeshi,ghiblies,chihiro,tonarinoyamadakun,mononokehime,mimiosumaseba,pompoko,umigakikoeru,kurenainobuta,omohideporoporo,majonotakkyubin,totoro,hotarunohaka,laputa,nausica

::example pic URL: http://www.ghibli.jp/gallery/chihiro001.jpg

for %%X in (wget.exe) do (set FOUND=%%~$PATH:X)
IF EXIST wget.exe (
	set state=1
) ELSE if defined FOUND (
	set state=2
) ELSE (
	echo Please put wget.exe in your current directory or in PATH.
	pause
	EXIT
)
::echo %state%

for %%i in (%animeList%) do (
	mkdir %%i
	cd %%i
	for /L %%j in (1, 1, %count%) do (
		set formattedValue=000000%%j
		IF %state%==1 (
			%cd%/wget.exe -nc "http://www.ghibli.jp/gallery/%%i!formattedValue:~-3!.jpg
		) 
		IF %state%==2 (
			wget -nc "http://www.ghibli.jp/gallery/%%i!formattedValue:~-3!.jpg
		)
	)
	cd ..
)

pause
