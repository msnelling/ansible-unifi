#!/bin/bash
set -e

# MacOS
# to store (-l is the label, mb will be different later):
# $ security add-generic-password -a all -D "Ansible Vault" -s "ansible_vault" -l "pass-kind" -w 'pass-here!'
# ansible allows to prompt for data (to stdout) and have different passwords here

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     vault_pass=$(cat .vault_id);;
    Darwin*)    vault_pass=$(security find-generic-password -s "ansible_vault" -l "acme-certs" -w);;
    *)          raise error "Unsupported OS '${unameOut}'"
esac
echo ${vault_pass}