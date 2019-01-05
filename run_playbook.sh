#!/bin/bash
set -e
ansible-playbook --inventory=hosts.yml --vault-id .vault_pass site.yml "$@"
