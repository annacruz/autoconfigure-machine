install-with-fish:
	which ansible || brew install ansible
	ansible-playbook -i "localhost," -c local main-fish.yaml

fish:
	ansible-playbook -i "localhost," -c local playbooks/terminal-fish.yaml

editors:
	ansible-playbook -i "localhost," -c local playbooks/editors.yaml

packages:
	ansible-playbook -i "localhost," -c local playbooks/packages.yaml

zsh:
	ansible-playbook -i "localhost," -c local playbooks/terminal-zsh.yaml

