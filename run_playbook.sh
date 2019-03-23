#!/bin/bash
set -e
ansible-playbook --inventory=hosts.yml site.yml "$@"
