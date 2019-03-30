This is basically a rip-off of https://github.com/JMoVS/installing_video_transcoding_on_windows, I prefer the "_Path_ method" because I use Cygwin as my "Unix system" in Windows, as I have never gotten the offical Unix subsystem to work well.

First, set up a folder that's in your Path: [Path Setup.md](https://github.com/lambdan/Setup/blob/master/Windows/Path%20Setup.md). If you don't wanna do that you can also place the following files in the `C:/Rubyxx-x64/bin` folder you get after installing Ruby. Eitherway, I will refer to this folder as _Path_.

- Install Ruby using [RubyInstaller](https://rubyinstaller.org/downloads/). Use the latest non-devkit version. During installation check all the boxes. **After installation it will ask to "Run ridk install to setup...", uncheck that!**
- Download [HandbrakeCLI](https://handbrake.fr/downloads2.php), and extract everything to _Path_
- Download [ffmpeg](http://ffmpeg.zeranoe.com/builds/), and extract everything to _Path_
- Download the portable version of [mkvtoolnix](https://www.fosshub.com/MKVToolNix.html). Extract everything to _Path_. We don't need all of the tools but they are useful sometimes so I recommend installing all of them
- Download [mpv](https://mpv.io/installation/) and extract everyhing to _Path_
- Download mp4v2. For some reason it is very hard to find an official executable of it, but I've been using the one attached here for years: https://forum.doom9.org/showthread.php?t=171038 - so download that and extract everything to _Path_. (In case that attached file disappears, I have it mirrored here in my repo: [mp4v2-r504-win32.7z](https://github.com/lambdan/Setup/raw/master/Windows/Packages/mp4v2-r504-win32.7z))
- Open a Command Prompt (`cmd`) or PowerShell and enter `gem install video_transcoding`
- Done!

## Batch Encoding on Windows

I like to just create a `.bat` file that I place in the folder with the raw `.mkv` files. Here's an example of one:

		@echo off
		for %%f in (*.mkv) do call transcode-video "%%f" --output G:/Transcodes/

If you need separate settings for different seasons or something (in this example Season 3 needs to be detelecined), you can do a match for that season above the wildcard that will match everything, it looks like this:

		@echo off
		for %%f in (*S03*.mkv) do call transcode-video "%%f" --output G:/Transcodes/ --filter detelecine --force-rate 23.976
		for %%f in (*.mkv) do call transcode-video "%%f" --output G:/Transcodes/

This works because `transcode-video` does not overwrite existing files.

As a sidenote, the output folder needs to exist as `transcode-video` will not create one.