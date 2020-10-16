# getGhibliPics
This is a simple bat file that gets pictures released by Ghibli, and this is for windows only.

## How to use
1. Download wget.exe from https://eternallybored.org/misc/wget/ 
2. Download or copy the bat file in this project from https://github.com/cewei8483/getGhibliPics, and put them in the same directory
（請將1所下載的wget和2的bat檔放在同個資料夾下）
3. Just run the bat file and it will start downloading

## Descriptions
If Ghibli releases more pics in the future, just modify the names on the variable "animeList" to download them by adding the corresponding anime names.

The anime name is represented by the red rectangular part below, in this example, karigurashi.

![Example](https://github.com/cewei8483/getGhibliPics/blob/master/animeListNameExample.png)

P.S. I set the -nc flag to wget, which means wget will not download the file if there is already one with the same name.
