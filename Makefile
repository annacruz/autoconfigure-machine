install:
	which ansible || brew install ansible
	ansible-playbook -i "localhost," -c local main.yaml

terminal:
	ansible-playbook -i "localhost," -c playbooks/terminal.yaml

editors:
	ansible-playbook -i "localhost," -c playbooks/editors.yaml

