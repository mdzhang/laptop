# laptop

Holds [Ansible](https://www.ansible.com/) playbook(s) to setup a new laptop.

## Usage

- Linux:

    ```sh
    curl -s https://raw.githubusercontent.com/mdzhang/laptop/main/debian.sh | /bin/bash
    ```

- macOS:

    ```sh
    curl -s https://raw.githubusercontent.com/mdzhang/laptop/main/macos.sh | /bin/bash
    ```

The script installs Ansible, then clones this repository and runs the playbook.

To directly run from an already checked out repository:

```sh
make run
```
