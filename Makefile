editors:
	which ansible || brew install ansible
	ansible-playbook -i "localhost," -c local playbooks/editors.yaml

packages:
	which ansible || brew install ansible
	ansible-playbook -i "localhost," -c local playbooks/packages.yaml

zsh:
	which ansible || brew install ansible
	ansible-playbook -i "localhost," -c local playbooks/terminal-zsh.yaml

