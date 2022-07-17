Create Kubernetes certificates
=========

Creates -and signs- key pairs for every Kubernetes component: CA (master), Kubelet, Kube-proxy, Kube-Controller-Manager, Kube-apiserver and Kubectl (admin).

Requirements
------------

None.

Role Variables
--------------

View defaults/main.yml.

Dependencies
------------

Standalone role.

Example Playbook
----------------

-

Testing with molecule
----------------
Ideally use bootstrap_molecule-enviroment.sh to set up your Python3 venv and pip3 packages to work with molecule within that envirment.
After that, run the tests:
molecule lint
molecule create
molecule verify
molecule converge
molecule login
molecule tests


License
-------

MIT

Author Information
------------------
juannfox (https://github.com/juannfox/)