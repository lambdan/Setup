@echo off
title NZXT Kraken X62 initialization

echo Setting color to red until we done
liquidctl.exe set sync color fixed ff0000

echo Setting pump speed...
liquidctl.exe set pump speed 80 --verbose

echo Setting fan curve...
liquidctl.exe set fan speed 34 50 40 100 --verbose

echo Now running random color script
kraken_random_color.py

echo.
echo Kraken is ready!
echo.
liquidctl status
echo.

pause
exit