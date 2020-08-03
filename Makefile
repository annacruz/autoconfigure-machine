vim:
	which ansible || brew install ansible
	ansible-playbook -i "localhost," -c local playbooks/vim.yaml

packages:
	which ansible || brew install ansible
	ansible-playbook -i "localhost," -c local playbooks/packages.yaml

zsh:
	which ansible || brew install ansible
	ansible-playbook -i "localhost," -c local playbooks/terminal-zsh.yaml

docker:
	which ansible || brew install ansible
	ansible-playbook -i "localhost," -c local playbooks/docker.yaml