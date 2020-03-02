# Termux + youtube-dl

This will install youtube-dl in Termux and add Termux to your Share button so you can hit share on a Youtube video, pick Termux and from there you can:

- Download 480p video
- Download full resolution video
- Download audio only in MP3 format

The script (`ytdl.sh`) is fairly straightforward so you should be able to edit it to your liking.

By default, videos are saved to the internal storage Movies folder and audio is saved to the internal storage Music folder.

# Steps

1. Install Termux from the Play Store or F-Droid or wherever else you can get it
2. Run Termux
3. Update and Install stuff (you type these commands in Termux, one at a time):

        apt update
        apt upgrade
        apt install curl ffmpeg python
        pip install youtube-dl

4. Set up storage access in Termux:

        termux-setup-storage 

5. Set up my termux-url-opener script (I recommend copy/pasting the curl command because it is very long to type out on a phone keyboard):

        mkdir ~/bin
        cd ~/bin
        curl -o termux-url-opener "https://raw.githubusercontent.com/lambdan/Setup/master/Android/Termux-youtube-dl/ytdl.sh" 
 
 6. Done!
 
# Credits

Heavily based on this [Reddit post](https://www.reddit.com/r/Android/comments/66kehg/twoclick_downloads_of_youtube_videos_straight/). 
