Install Kubernetes binaries
=========

Downloads the latest version of Kubernetes binaries and "installs" them in the destination hosts.
By install meaning moving them to a useful path (by default /usr/local/bin) and making them executable (by default with DAC mode 0555).

Requirements
------------

Access to dl.k8s.io.

Role Variables
--------------

Kubernetes URL where Google publishes the latest stable version

    kubernetes_release_url

Lists of Kubernetes binaries to install on each type of node/scenario; Kubernetes binaries supported are kubectl, kube-proxy, kubelet, kube-controller-manager and kube-apiserver.

    kubernetes_binaries_default
    
    kubernetes_binaries_node
    
    kubernetes_binaries_master
Type of installation. Supported: "node", "master" or "default". The "default" one is included in both "node" and "master".

    kubernetes_binaries_install_type

Destination path for Kubernetes binaries

    kubernetes_binaries_path

File permissions for Kubernetes binaries. Must be an integer-type valid DAC code (type-user-group-other); defaults to Read+Execution for all.

    kubernetes_binaries_dac_code

  System architecture in the format necessary for K8s download URL. Currently only supports "amd64".

    architecture

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
    
		    - name: Install Kubernetes binaries w/ default values
		    
			  ansible.builtin.include_role:
			    
				name: install-k8s-binaries
Example usage w/ custom variables:
  
    - name: Example playbook - Master node
    
	    hosts: localhost
    
	    connection: local
	    
	    gather_facts: false
	    
	    vars:
		    - kubernetes_binaries_install_type: master
    
	    tasks:
    
		    - name: Install Kubernetes binaries w/ custom values for master node
		    
			  ansible.builtin.include_role:
			    
				name: install-k8s-binaries

License
-------

MIT

Author Information
------------------
juannfox (https://github.com/juannfox/)