@echo off
setlocal EnableDelayedExpansion
setlocal enableextensions

set count=50
set animeList=marnie,kaguyahime,ged,kazetachinu,kokurikozaka,karigurashi,ponyo,chihiro

::currently released (20200921): marnie,kaguyahime,ged,kazetachinu,kokurikozaka,karigurashi,ponyo,chihiro

::all anime names: red-turtle,marnie,kaguyahime,kazetachinu,kokurikozaka,karigurashi,ponyo,ged,howl,nekonoongaeshi,ghiblies,chihiro,tonarinoyamadakun,mononokehime,mimiosumaseba,pompoko,umigakikoeru,kurenainobuta,omohideporoporo,majonotakkyubin,totoro,hotarunohaka,laputa,nausica

::example pic URL: http://www.ghibli.jp/gallery/chihiro001.jpg

for %%i in (%animeList%) do (
	echo %%i
	mkdir %%i
	cd %%i
	for /L %%j in (1, 1, %count%) do (
		set formattedValue=000000%%j
		::@echo "http://www.ghibli.jp/gallery/%%i!formattedValue:~-3!.jpg"
		wget -nc "http://www.ghibli.jp/gallery/%%i!formattedValue:~-3!.jpg"
	)
	cd ..
)
