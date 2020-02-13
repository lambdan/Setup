# Uses liquidctl: https://github.com/jonasmalacofilho/liquidctl
# Read specific Kraken documentation here: https://github.com/jonasmalacofilho/liquidctl/blob/master/docs/nzxt-kraken-x-3rd-generation.md
# Suggested use: make this script run at startup to get a new color every boot!

import subprocess
import random

def random_color(): # https://stackoverflow.com/a/14019260
	r = lambda: random.randint(0,255)
	res = str('%02X%02X%02X' % (r(),r(),r()))
	print(res)
	return str('%02X%02X%02X' % (r(),r(),r()))

print('ring:')
subprocess.call(['liquidctl.exe', 'set', 'ring', 'color', 'breathing', random_color(), random_color(), random_color(), random_color(), random_color(), random_color(), random_color(), random_color(), '--speed', 'slowest'])
print()
print('logo:')
subprocess.call(['liquidctl.exe', 'set', 'logo', 'color', 'fading', random_color(), random_color(), random_color(), random_color(), random_color(), random_color(), random_color(), random_color(), '--speed', 'slowest'])