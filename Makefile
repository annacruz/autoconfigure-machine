SHELL = /bin/bash

all: install_ansible install_general_packages install_zsh install_docker install_nvim

install_ansible:
	brew install ansible
	ansible-galaxy collection install community.general

install_vim:
	which ansible || $(MAKE) install_ansible
	ansible-playbook -i "localhost," -c local playbooks/vim.yaml

install_general_packages:
	which ansible || $(MAKE) install_ansible
	ansible-playbook -i "localhost," -c local playbooks/packages.yaml

install_zsh:
	which ansible || $(MAKE) install_ansible
	ansible-playbook -i "localhost," -c local playbooks/terminal-zsh.yaml

install_docker:
	which ansible || $(MAKE) install_ansible
	ansible-playbook -i "localhost," -c local playbooks/docker.yaml

install_nvim:
	which ansible || $(MAKE) install_ansible
	ansible-playbook -i "localhost," -c local playbooks/neovim.yaml

install_brew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
