# Throw All Weapons On Death

[![Banner](PublicationContent/mutbanner.png)](https://steamcommunity.com/sharedfiles/filedetails/?id=2379769040)

[![Steam Workshop](https://img.shields.io/static/v1?message=workshop&logo=steam&labelColor=gray&color=blue&logoColor=white&label=steam%20)](https://steamcommunity.com/sharedfiles/filedetails/?id=2379769040)
[![Steam Downloads](https://img.shields.io/steam/downloads/2379769040)](https://steamcommunity.com/sharedfiles/filedetails/?id=2379769040)
[![Steam Favorites](https://img.shields.io/steam/favorites/2379769040)](https://steamcommunity.com/sharedfiles/filedetails/?id=2379769040)
[![MegaLinter](https://github.com/GenZmeY/KF2-TAWOD/actions/workflows/mega-linter.yml/badge.svg?branch=master)](https://github.com/GenZmeY/KF2-TAWOD/actions/workflows/mega-linter.yml)
[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/GenZmeY/KF2-TAWOD)](https://github.com/GenZmeY/KF2-TAWOD/tags)
[![GitHub](https://img.shields.io/github/license/GenZmeY/KF2-TAWOD)](https://www.gnu.org/licenses/gpl-3.0.en.html)

**A small server-side mutator that forces players to throw all their weapons on death (not just the current weapon as in the game by default).**  

## Build
**Note:** If you want to build/test/brew/publish a mutator without git-bash and/or scripts, follow [these instructions](https://tripwireinteractive.atlassian.net/wiki/spaces/KF2SW/pages/26247172/KF2+Code+Modding+How-to) instead of what is described here.
1. Install [Killing Floor 2](https://store.steampowered.com/app/232090/Killing_Floor_2/), Killing Floor 2 - SDK and [git for windows](https://git-scm.com/download/win);
2. open git-bash and go to any folder where you want to store sources:  
`cd <ANY_FOLDER_YOU_WANT>`  
3. Clone this repository and go to the source folder:  
`git clone https://github.com/GenZmeY/KF2-TAWOD && cd KF2-TAWOD`
4. Download dependencies:  
`git submodule init && git submodule update`  
5. Compile:  
`./tools/builder -c`  
5. The compiled files will be here:  
`C:\Users\<USERNAME>\Documents\My Games\KillingFloor2\KFGame\Unpublished\BrewedPC\Script\`

## Usage
[See steam workshop page](https://steamcommunity.com/sharedfiles/filedetails/?id=2379769040)

## Bug reports
If you find a bug, create new issue here: [Issues](https://github.com/GenZmeY/KF2-TAWOD/issues)  
Describe what the bug looks like and how to reproduce it.  

## License
[![license](https://www.gnu.org/graphics/gplv3-with-text-136x68.png)](LICENSE)  
