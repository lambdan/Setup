# Windows Subsystem for Linux (WSL)

This replaces cygwin.

1. Enable WSL, [Guide](https://docs.microsoft.com/en-us/windows/wsl/install-win10) or TLDR:
	- Run in Powershell as administrator: `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`
	- Reboot
	- Search for Linux in Microsoft Store, install Ubuntu
2. Launch "Ubuntu" and set a username and password

# New Terminal

1. Install [New Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal-preview/9n0dx20hk701?activetab=pivot:overviewtab)
2. Use [profiles.json from mehulmpt](https://gist.github.com/mehulmpt/16826be279bb9bf70310b465ca9c5de3), for now

# zsh and Oh My Zsh

- zsh: `sudo apt-get install zsh`
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh): `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Install `.zshrc`: 
		
		cd ~
		rm .zshrc
		wget https://raw.githubusercontent.com/lambdan/Setup/master/Windows/Configs/.zshrc

# Python3 pip fix

To add pip3 packages to path, add this to .zshrc (or other rc): `export PATH="$HOME/.local/bin:$PATH"`

(Already included with the .zshrc above)

# Recommended Packages to NOT install

Use Windows exe files in [Windows PATH](https://github.com/lambdan/Setup/blob/master/Windows/Path%20Setup.md) instead

- mpv
- ffmpeg
- liquidctl