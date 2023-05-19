#!/bin/bash
# Lint Ansible and Yaml
set -euo pipefail
ansible-lint .
yamllint .
