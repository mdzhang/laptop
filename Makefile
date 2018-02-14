SUDO = $([[ "$(uname)" != "Darwin" ]] && echo sudo || :)

# in case you just want to rerun playbook locally
run:
	${SUDO} ansible-playbook -i inventory playbook.yml --verbose

