# NZXT Kraken Without Using CAM

# Before You Start

**You don't need to do this!**

The NZXT Kraken X62 is actually quite nice even when you don't control it, which is why I stopped controlling it.

- The RGB is a tasteful white ring spinning around (I don't have a windowed case so that's fine for me)
- The fans and pump are quiet by default
- They ramp up when needed

And it makes sense that they're good by default, because most unknowing Kraken customers will probably not install the CAM software. 

So I don't do anything to control it anymore. I just let it run. 

# Or you could do all of this...

(Most of this was written to be used on Windows, but can easily be translated to Unix)

## Pre-reqs

- This is all dependent on [liquidctl](https://github.com/jonasmalacofilho/liquidctl), which requires Python
- You also need Python installed for the random color script
- I use Windows so therefore I use `.bat` files for their simplicity. All of this should work fine on Unix systems if you just translate them to Bash scripts
- I have only tested with _NZXT Kraken X62_, as that is the cooler I have

## Steps

- Install liquidctl
	- Read their README
	- On Windows, just put [liquidctl.exe](https://github.com/jonasmalacofilho/liquidctl/releases) in PATH
- Put `kraken_init.bat` in the same folder	
- Put `kraken_random_color.py` in the same folder
- Run `kraken_init.bat` and make sure it works (it should set the speeds and you should get random RGB on the waterblock)
- Make a shortcut to `kraken_init.bat`. Put it in [Windows' Autostart folder](https://www.howtogeek.com/228467/how-to-make-a-program-run-at-startup-on-any-computer/).

Now whenever your computer restarts and Windows starts up, your Kraken should be automatically configured.

## Optional Steps

- Remove the `pause` line from `kraken_init.bat`. This way the window will automatically go away. I like to leave it on to make sure everything went well. Especially if you dont have a windowed case I would recommend leaving it in.
- Put `liqs.bat` in _Path_. This way you can type `liqs` (**liq**uid **s**tatus) into any cmd window to monitor your Kraken.
- Make a shortcut to `liqs.bat` and put it in your Autostart folder. This way the monitor window comes up automatically.
- Put `krakc.bat` in _Path_. This way you can type `krakc` (**krak**en **c**olor) into any cmd window to get new random colors on the waterblock.
- Modify Pump and Fan Speed by modifying the lines in `kraken_init.bat`. Read [liquidctl's Kraken specific documentation](https://github.com/jonasmalacofilho/liquidctl/blob/master/docs/nzxt-kraken-x-3rd-generation.md) to figure out how.
- Make your own color scheme by reading [liquidctl's Kraken specific documentation](https://github.com/jonasmalacofilho/liquidctl/blob/master/docs/nzxt-kraken-x-3rd-generation.md) to set up your own scheme, or mess around with `kraken_random_color.py`.

## Explanation of kraken_init.bat

- We set the color to red to know that we aren't configured yet: `liquidctl.exe set sync color fixed ff0000`
	- If something goes wrong, it should stay red, and that way we with windowed cases know something isn't right.

- We set the pump speed to constant 80%: `liquidctl.exe set pump speed 80 --verbose`
	- This equates to roughly 2400 rpm.
	- This is the highest I can have it without hearing it. YMMV.
	- You can also just not set a pump speed and let it run at the default 2000 rpm. It doesn't make a big difference in temperature.
	- The `--verbose` option could be removed but it's nice to see for confirmation.

- We set a custom fan curve: `liquidctl.exe set fan speed 34 50 40 100 --verbose`
	- Fans will run at 50% until the liquid temperature hits 34°C.	
		- In my experience the liquid doesn't get over 34°C in idle. YMMV once again.
		- 50% with my _Corsair ML140 PRO RGB_ fans are silent.
	- Fans will ramp up gradually until the liquid temperature hits 40°C which is when they will go 100%.
		- In my experience I don't go over 40°C unless I intentionally run stresstests for hours.
	- The `--verbose` option is more useful here as you can see how the fans will ramp up.

- Finally at the end we run `kraken_random_color.py` to get a new random color scheme to remove the all red one we set at the beginning. If we made it this far everything else should've gone fine, so if you see random colors: everything should be good!

## Screenshots

Example of kraken_init that was run at startup:
![kraken_init](https://lambdan.se/img/cmd_2019-12-10_17-02-46.png)

The liqs monitoring window:
![liqs](https://lambdan.se/img/cmd_2019-12-10_17-01-55.png)
