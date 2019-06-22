# Set up Cygwin, apt-cyg and openssh

- Install Cygwin using the normal installer from https://cygwin.com/install.html, [setup-x86_64.exe](https://cygwin.com/setup-x86_64.exe)
	- Install the `lynx` package, needed for next step

- Install [apt-cyg](https://github.com/transcode-open/apt-cyg)
		
		lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
		install apt-cyg /bin
		apt-cyg install wget

- Install openssh: `apt-cyg install openssh` and then restart the terminal. Otherwise you get "Pseudo-terminal not allocated..." error when trying to ssh.

- Add "Bash Prompt Here" to right click menu in Explorer:

		apt-cyg install chere
		chere -i -t mintty -s bash

- Done

# Optional Steps

- I recommend setting up key based ssh login by doing

		ssh-keygen -t rsa
		ssh-copy-id user@server

- Install your own config files:

		cd ~
		rm .minttyrc
		wget https://raw.githubusercontent.com/lambdan/Setup/master/Windows/Configs/.minttyrc
		rm .bashrc
		wget https://raw.githubusercontent.com/lambdan/Setup/master/Windows/Configs/.bashrc


