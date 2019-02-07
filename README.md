# Description
rootlessJB-patcher is a simple wrapper script that will help you installing any tweaks on your iOS device jailbroken with rootlessJB.
It automates the processes of patching and signing your .deb tweaks and also supports you with installing them onto your device.

# Usage
1. Clone this repository: `git clone https://github.com/hrtkpf/rootlessJB-patcher.git`
2. Change directory into the repo: `cd rootlessJB-patcher`
3. Run the script: `./patch.sh <your .deb file>` (the patched version will be put into the "patched" folder)
4. Optionally you can copy and paste the commands recommended by the script and execute them on your iOS device via SSH

# Supported platforms
Software provided in this repo was tested on macOS only.

# Credits
Thanks to:
- Jake James for providing [rootlessJB](https://github.com/jakeajames/rootlessJB3) and patcher script
- xerub for providing [ldid2](https://github.com/xerub/ldid) signing tool based on work by saurik

### Concluding notice
I created this project for myself because patching, signing and installing tweaks manually got really annoying when testing multiple tweaks.
So I thought I'd release it so it will facilitate the process for more people :)
