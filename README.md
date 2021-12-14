## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[Images/network_diagram.png](https://github.com/rennyverdugo760/Project1/blob/50e7933b2604e3c7019cef3f959247a82c4cd067/Images/network_diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - [Ansible/my-playbook.yml](https://github.com/rennyverdugo760/Project1/blob/ce222cdf4dd491e0b293badaefff65107763cecb/Ansible/my-playbook.yml)

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly efficient, in addition to restricting traffic to the network.
- Load balancers help to prevent DDoS (Distributed Denial of Service) attacks. The advantage of using a jump box is that you can secure/control access to other servers you need to operate within.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network and system files.
- Filebeat will watch for any log event and then forwards that data to Elasticsearch or Logstash.
- Metricbeat will record metrics for the system and services on the servers.

The configuration details of each machine may be found below.

| Name     | Function   | IP Address | Operating System |
|----------|------------|------------|------------------|
| Jump Box | Gateway    | 10.0.0.1   | Linux            |
| DVWA 1   | Web Server | 10.0.0.5   | Linux            |
| DVWA 2   | Web Server | 10.0.0.6   | Linux            |
| ELK      | Monitoring | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 38.94.241.106

Machines within the network can only be accessed by SSH.
-The Jump Box is allowed access to the ELK VM from its private ip address 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | YES                 | 38.94.241.106        |
| ELK      | NO                  | 10.0.0.1-254         |
| DVWA 1   | NO                  | 10.0.0.1-254         |
| DVWA 2   | NO                  | 10.0.0.1-254         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it can save time and be replicated on multiple machines at once.

The playbook implements the following tasks:
- Install docker.io
- Install python3-pip
- Install pip package for docker
- Increase virtual memory
- Use more memory
- Download and launch a docker ELK container
- Enable service docker on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

[Images/docker_ps_output.png](https://github.com/rennyverdugo760/Project1/blob/133f3ea7db55a25aa4b80b9dcc971af1568de23d/Images/docker_ps_output.PNG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- DVWA 1 VM at 10.0.0.5
- DVWA 2 VM at 10.0.0.6

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat will watch for any log event and then forwards that data to Elasticsearch or Logstash.
- Metricbeat will record metrics for the system and services on the servers.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to  http://**your-IP**:5601/app/kibana#/home?__g=() to check that the installation worked as expected._

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
