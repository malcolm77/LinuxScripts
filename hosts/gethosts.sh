# script/command to get master hosts file from git hub
/usr/bin/cp -f /etc/hosts /etc/hosts.old; wget https://raw.githubusercontent.com/malcolm77/LinuxScripts/master/hosts/hosts -O /etc/hosts

