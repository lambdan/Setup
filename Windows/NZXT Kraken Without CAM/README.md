# NZXT Kraken Without Using CAM

## Pre-reqs

- This is all dependent on [liquidctl](https://github.com/jonasmalacofilho/liquidctl)
- You need Python installed for the random color script (and liquidctl but it's bundled in the release exe for liquidctl)
- I recommend putting everything in a folder that is in your `%PATH%`. Read more here: [Path Setup](https://github.com/lambdan/Setup/blob/master/Windows/Path%20Setup.md)
- I use Windows so therefore I use `.bat` files for their simplicity. All of this should work fine on Unix systems if you just translate them to Bash scripts
- I have only tested with _NZXT Kraken X62_, as that is the cooler I have

## Steps

- Put [liquidctl.exe](https://github.com/jonasmalacofilho/liquidctl/releases) in a folder (I recommend _Path_)
- Put `kraken_init.bat` in the same folder	
- Put `kraken_random_color.py` in the same folder
- Run `kraken_init.bat` and make sure it works (it should set the speeds and you should get random RGB on the waterblock)
- Make a shortcut to `kraken_init.bat`. Put it in [Windows' Autostart folder](https://www.howtogeek.com/228467/how-to-make-a-program-run-at-startup-on-any-computer/).

Now whenever your computer restarts and Windows starts up, your Kraken should be automatically configured.

## Optional Steps

- Put `liqs.bat` in _Path_. This way you can type `liqs` (**liq**uid **s**tatus) into any cmd window to monitor your Kraken.
- Make a shortcut to `liqs.bat` and put it in your Autostart folder. This way the monitor window comes up automatically.
- Put `krakc.bat` in _Path_. This way you can type `krakc` (**krak**en **c**olor) into any cmd window to get new random colors on the waterblock.
- Modify Pump and Fan Speed by modifying the lines in `kraken_init.bat`. Read [liquidctl's Kraken specific documentation](https://github.com/jonasmalacofilho/liquidctl/blob/master/docs/nzxt-kraken-x-3rd-generation.md) to figure out how
- Make your own color scheme by reading [liquidctl's Kraken specific documentation](https://github.com/jonasmalacofilho/liquidctl/blob/master/docs/nzxt-kraken-x-3rd-generation.md) to set up your own scheme, or mess around with `kraken_random_color.py`