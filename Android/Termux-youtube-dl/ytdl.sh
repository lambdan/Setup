#!/bin/bash
# termux-url-opener for youtube-dl

# check if no parameter
if [ -z "$1" ]
then
	echo "No url gotten!"
	exit
fi


echo "Input URL: $1"

PS3='Choose: '
options=("Video (max 480p)" "Video (full quality)" "Audio only (MP3)" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Video (max 480p)")
			echo "Downloading max 480p..."
            youtube-dl "$1" --no-mtime -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s [480p].%(ext)s" -f "best[height<=480]"
            exit
            ;;
        "Video (full quality)")
			echo "Downloading full quality video..."
            youtube-dl "$1" --no-mtime -o "/data/data/com.termux/files/home/storage/shared/Movies/%(title)s.%(ext)s"
            exit
            ;;
        "Audio only (MP3)")
			echo "Downloading audio only to mp3..."
            youtube-dl "$1" --no-mtime --extract-audio --audio-format mp3 -o "/data/data/com.termux/files/home/storage/shared/Music/%(title)s.%(ext)s"
            exit
            ;;
        "Quit")
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
