# Homebrew and transcode-video

1. Install Homebrew from [brew.sh](https://brew.sh):
	
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. Install `transcode-video` prereqs using Homebrew:

		brew install handbrake ffmpeg mkvtoolnix mp4v2 mpv

3. Install `transcode-video`:

		sudo gem install video_transcoding