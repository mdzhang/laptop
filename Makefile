# in case you just want to rerun playbook locally
run:
	PATH="$$PATH:~/.local/bin"
	ansible-playbook -i inventory playbook.yml -vvv --ask-become-pass

sshgen:
	ssh-keygen -t ed25519 -a 1000 -C "zhang.michelle.d@gmail.com"
