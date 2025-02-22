<p align="center">
  <img src="assets/kowalski.png" width="80" align="center"/>
</p>

# kowalski

![GitHub top language](https://img.shields.io/github/languages/top/Zatfer17/kowalski)
![GitHub last commit](https://img.shields.io/github/last-commit/Zatfer17/kowalski)
[![License: GPL-3.0](https://img.shields.io/badge/License-CC0-orange.svg)](https://creativecommons.org/publicdomain/zero/1.0/deed.en)

`kowalski` is an AI-powered [PKMS](https://www.reddit.com/r/PKMS/comments/1ae7spf/what_is_pkm/?tl=it) for Android based on [kowalski-core](https://github.com/Zatfer17/kowalski-core).

<p float="left">
<img src="assets/screenshot-1.png" width="240" height="auto">
<img src="assets/screenshot-2.png" width="240" height="auto">
<img src="assets/screenshot-3.png" width="240" height="auto">
<img src="assets/screenshot-4.png" width="240" height="auto">
<img src="assets/screenshot-5.png" width="240" height="auto">
<img src="assets/screenshot-6.png" width="240" height="auto">
</p>

## Setup

The app backend is handled by [kowalski-core](https://github.com/Zatfer17/kowalski-core) running in server mode on Termux, hence we need to install it first:
- Download and install latest [release](https://github.com/Zatfer17/kowalski/releases)
- Install [termux](https://termux.dev/en/)
- Install git and go in termux with `pkg install git golang`
- Git clone [kowalski-core](https://github.com/Zatfer17/kowalski-core) on Termux
- Edit the makefile and set `INSTALL_PATH` to `/data/data/com.termux/files`
- Run `make all`
- Run `ko serve`

Finally you can launch kowalski

## Remarks
- Notes are automatically saved upon going back to the main screen
- Notes need to be saved before one can use AI on them
- In order to save battery (and since I couldn't make it work) there is no automatic refresh on the notes screen. So every time you add a note you must hit the refresh button to see it

## Feature matrix

|                | kowalski | Keep | Obsidian | Notion | Anytype | Logseq | gitJournal | MyMind | Fabric |
|----------------|----------|------|----------|--------|---------|--------|------------|--------|--------|
| Free           | ✅        | ✅    | ✅        | ✅      | ✅       | ✅      | ✅          | ✅      | ✅      |
| Open source    | ✅        |      |          |        |         | ✅      | ✅          |        |        |
| Simple         | ✅        | ✅    |          |        |         |        | ✅          |        |        |
| Local          | ✅        |      |          |        |         | ✅      | ✅          |        |        |
| Plain markdown | ✅        |      | ✅        |        |         |        | ✅          |        |        |
| AI capable     | ✅        |      | ✅*       | ✅      |         | ✅*     |            | ✅      | ✅      |
| Cross platform | ✅*       | ✅    | ✅        | ✅      | ✅       | ✅      | ✅          | ✅      | ✅      |
| Hackable       | ✅        |      | ✅        |        |         |        |            |        |        |

*: With plugins

## License

`kowalski` is distributed under the terms of the [Creative Commons Zero Universal](https://creativecommons.org/publicdomain/zero/1.0/deed.en).
