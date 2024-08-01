# Autoconfigure-machine

This repository is a series of playbooks to put my mac machines in shape and ready to work

## Pre-requisites
- Install `xcode`
- Install `xcode-select`
 ```bash
   xcode-select --install
 ```
- Sign `xcodebuild`
 ```bash
   sudo xcodebuild -license
 ```
- Install `brew`
 ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 ```

**[TODO]**

- Automatically install vim plugins
- Automatically install nvim plugins
- Configure tmux

---
**[DONE]**
- Add spaceship theme on zsh configuration
- Install node development basic packages:
  - nodemon
  - eslint
