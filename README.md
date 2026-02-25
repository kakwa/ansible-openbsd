# Ansible OpenBSD

Playbook and roles to configure My OpenBSD server.

## Stuff Configured

* zsh, vim & misc utilities
* dns server (knot) & resolver (unbound) for `int.kakwalab.ovh` with dynamic updates/RFC-2136 support
* openldap & ldapcherry+nginx (TODO, not currently working)

## Run

```bash
ansible-playbook -i 192.168.1.25, openbsd-kakwa.yml
```
