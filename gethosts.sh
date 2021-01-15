# script/command to get master hosts file from git hub
cp /etc/hosts /etc/hosts.old
wget https://raw.githubusercontent.com/malcolm77/LinuxScripts/master/hosts -O /etc/hosts
