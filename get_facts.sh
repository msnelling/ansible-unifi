#!/bin/bash
ansible --inventory=hosts.yml all --vault-id .vault_pass --module-name=setup