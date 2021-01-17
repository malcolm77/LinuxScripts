# script to copy the dvd to a local repo
# assumes dvd is mounted and device is /dev/sr0

# make required folder
mkdir -p /mnt/tmp
mkdir -p /mnt/dvd

# mount DVD
mount /dev/sr0 /mnt/tmp

# copy contents (need to check this)
cp -rv /mnt/tmp/* /mnt/dvd

# umount DVD
umount /mnt/tmp

# get local repo file
wget https://raw.githubusercontent.com/malcolm77/LinuxScripts/master/local-rhel8.repo -O /etc/yum.repos.d/local8.repo

# check repolist is working
yum repolist
