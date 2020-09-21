@echo off
setlocal EnableDelayedExpansion
setlocal enableextensions

set count=50
set animeList=chihiro,kokurikozaka,kazetachinu,ponyo

::http://www.ghibli.jp/gallery/chihiro001.jpg
for %%i in (%animeList%) do (
	echo %%i
	mkdir %%i
	cd %%i
	for /L %%j in (1, 1, %count%) do (
		set formattedValue=000000%%j
		::@echo "http://www.ghibli.jp/gallery/%%i!formattedValue:~-3!.jpg"
		wget "http://www.ghibli.jp/gallery/%%i!formattedValue:~-3!.jpg"
	)
	cd ..
)
