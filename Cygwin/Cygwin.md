# Set up Cygwin, apt-cyg and openssh

Install Cygwin using the normal installer from https://cygwin.com/install.html, [setup-x86_64.exe](https://cygwin.com/setup-x86_64.exe). Install the `lynx` package atleast.

## Install [apt-cyg](https://github.com/transcode-open/apt-cyg) and test it
		
		lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
		install apt-cyg /bin
		apt-cyg install wget curl

## Install zsh and oh-my-zsh
		
		apt-cyg install zsh git chere
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
		chere -i -t mintty -s zsh

## Set zsh as default shell

In Windows Environment Variables settings, add an entry called `SHELL` and in it put the unix path to zsh (`/usr/bin/zsh`)

## ssh

Install openssh: `apt-cyg install openssh` and then restart the terminal. Otherwise you get "Pseudo-terminal not allocated..." error when trying to ssh.

# Optional Steps

## Key based ssh login:

		ssh-keygen
		ssh-copy-id user@server
