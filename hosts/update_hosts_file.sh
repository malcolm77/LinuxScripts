# this script will run an Ansible playbook to update the hosts file on all Linux systems

ansible-playbook -i hostlist -u root -K get-hosts-file.yml
