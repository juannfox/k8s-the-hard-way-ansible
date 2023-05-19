# Kubernetes the hard way - w/ Ansible

> Work in progress!

## About

This is my humble version of a workshop to deploy a **Kubernetes** cluster the "*hard way*", as the legendary *Kelsey Hightower* called it.
It is -of course- inspired in *Kelsey's* famous repo [**[kubernetes-the-hard-way](https://github.com/kelseyhightower/kubernetes-the-hard-way)**](https://github.com/kelseyhightower/kubernetes-the-hard-way) and also in *Mumshad Mannambeth's* repo [[mmumshad-kubernetes-the-hard-way](https://github.com/ddometita/mmumshad-kubernetes-the-hard-way)](https://github.com/ddometita/mmumshad-kubernetes-the-hard-way) -who is an excelent **Udemy** teacher and founder of **KodeKloud** platform.

I've only performed *kubernetes-the-hard-way* twice -based on local VMs- back when I was preparing for my *CKA* exam. Since I recall that being a quite daunting task but incredibly rewarding knowledge-wise, I've been wanting to do it again in order to fortify my *K8s* skills.
Since I recently started learning and using **Ansible**, I though why not bring these two together -which by the way match quite right- and kill two birds with one stone -sort of speak-.
### Tools and Infrastructure

> Infrastructure provisioning is currently out of this project's scope and being done manually (Vagrant can be used).

A bunch of **Ansible** *roles* will be leveraging all the tasks that need to be performed on the nodes (Ubuntu 20.04 LTS based) in order to have the cluster up and running.
The tasks are the following:

**Master nodes (x3)**

 - Install **Kubernetes** binaries
 - Generate CA certificates
 - Generate client certificates for each component and one for admin user
 - Distribute the certificates
 - Generating *kube config* files for each component
 - Generating *systemd unit* files for each component
 - Bootstrap Data Encryption
 - Installing **etcd** w/ certificates, *systemd unit* and encryption at rest
 - Bootstrap the nodes

**Worker nodes (x3)**
 - Install Kubernetes binaries
 - Distribute the certificates
 - Generating *kube config* files for each component
 - Generating *systemd unit* files for each component
 - Bootstrap the nodes
 - Install and setup CNI plugin for Pod Networking

**Other**

 - Install CoreDNS addon as K8s deployment (Service and pod DNS)
 - Setup *kube config* file for administrator
 - Connect to the cluster and perform E2E tests


## tl;dr

> Work in progress!

A *hard* (self-setup, self-configured and self-managed) **Kubernetes** cluster deployment, but mixed with the power of **Ansible**.

## Requirements
- Ansible
- Molecule (for testing)
- Python 3
- OpenSSL
