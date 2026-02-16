# Ansible OpenBSD

Playbook and roles to configure OpenBSD hosts (with doas).

## Target

- **Host:** `admin@192.168.1.25` (see `inventory.yml`)
- **Privilege escalation:** `doas` (configured in playbook and `ansible.cfg`)

## One-time: Python on the OpenBSD host

OpenBSD base has no Python. The playbook runs a bootstrap that tries to install it; if your mirror or snapshot uses different package names, install it manually on the host:

```sh
# On the OpenBSD host (as admin)
doas pkg_add python3
# If "Can't find": set PKG_PATH then install, e.g.:
# export PKG_PATH=https://cdn.openbsd.org/pub/OpenBSD/$(uname -r)/packages/$(machine -a)/
# doas pkg_add python3
```

Then set the interpreter in `inventory.yml` if needed (e.g. `ansible_python_interpreter: /usr/local/bin/python3.12` or `/usr/local/bin/python3`).

## Requirements

- `community.general` collection (for `openbsd_pkg`):  
  `ansible-galaxy collection install -r requirements.yml`

## Run

```bash
ansible-playbook openbsd-kakwa.yml
```

Roles: `os-release`, `vim`, `zsh`, `openbsd-misc-packages`, `openbsd-misc` (doas rule, misc packages via `pkg_add`).
