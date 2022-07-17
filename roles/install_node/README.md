Install Containerd runtime
=========

Installs all the necessary software in a node.

Requirements
------------

Access to Github and dl.k8s.io.

Role Variables
--------------

View defaults/main.yml.

Dependencies
------------

Standalone role.

Example Playbook
----------------

Example usage w/ defaults:
  
    - name: Example playbook
    
	    hosts: localhost
    
	    connection: local
	    
	    gather_facts: false
    
	    tasks:
    
		    - name: Install node
		    
			  ansible.builtin.include_role:
			    
				name: install_node


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