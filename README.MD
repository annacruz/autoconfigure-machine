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

---

  ## Post Configuration
  ### iterm2
  It's necessary to configure some escape sequence.
  
  - Go to **Preferences > Profile > Keys**
    - Set the left ⌥ key to act as an *escape character* or *Esc+*
    - On Key Mappings in the same screen, it's needed to redefine some shortcuts
      - Find the current shortcut for ⌥ + ← or create a new one with the following settings:
        - *Action*: **Send Escape Sequence**
        - *Esc+* **b**
      - Find the current shortcut for ⌥ + → or create a new one with the following settings:
        - *Action*: **Send Escape Sequence**
        - *Esc+* **f**

---
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
