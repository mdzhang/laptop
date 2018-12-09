# in case you just want to rerun playbook locally
run:
	PATH="$$PATH:~/.local/bin"
	ansible-playbook -i inventory playbook.yml -vvv --ask-become-pass

sshgen:
	ssh-keygen -t ed25519 -a 1000 -C "zhang.michelle.d@gmail.com"

# b/c I always check this out via HTTP during initial setup
git-remote-ssh:
	git remote set-url origin git@github.com:mdzhang/laptop.git
