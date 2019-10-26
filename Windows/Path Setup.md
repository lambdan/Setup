# Adding a folder to _Path_

- Create the folder `c:\in_path`
	- The name of the folder is obviously up to you. Go with something short and without spaces and weird characters.
- Add this folder to PATH:
	(Some of the buttons might not be labeled properly as my Windows is in Swedish)
	- Right click _My Computer_ -> Properties
	- _Advanced System Settings_ (left sidebar)
	- _Environment Variables_
	- Highlight _Path_, hit _Edit_
	- Add a new entry and point it to `c:\in_path`
- Now you can add files to this folder and they will be accessible anywhere 

# Some Recommendations

- [ffmpeg](https://ffmpeg.zeranoe.com/builds/)
- [mpv](https://mpv.io/installation/)
- [youtube-dl](https://ytdl-org.github.io/youtube-dl/download.html) (Windows exe, requires [Microsoft Visual C++ 2010 Redistributable Package (x86)](https://www.microsoft.com/en-US/download/details.aspx?id=5555)) (or install using `pip`)
- [whoislive.py](https://github.com/lambdan/whoislive) + [wil.bat](https://github.com/lambdan/Setup/blob/master/Windows/BAT-files/wil.bat) + [tw.bat](https://github.com/lambdan/Setup/blob/master/Windows/BAT-files/tw.bat)
