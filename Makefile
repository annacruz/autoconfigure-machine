all: install_ansible install_general_packages install_zsh install_docker install_nvim

install_ansible:
	brew install ansible
	ansible-galaxy collection install community.general

install_vim:
	which ansible || install_ansible
	ansible-playbook -i "localhost," -c local playbooks/vim.yaml

install_general_packages:
	which ansible || install_ansible
	ansible-playbook -i "localhost," -c local playbooks/packages.yaml

install_zsh:
	which ansible || install_ansible
	ansible-playbook -i "localhost," -c local playbooks/terminal-zsh.yaml

install_docker:
	which ansible || install_ansible
	ansible-playbook -i "localhost," -c local playbooks/docker.yaml

install_nvim:
	which ansible || install_ansible
	ansible-playbook -i "localhost," -c local playbooks/neovim.yaml
