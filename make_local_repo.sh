# script to copy the dvd to a local repo
# assumes dvd is mount and device is /dev/sr0

# make required folder
mkdir -p /mnt/tmp
mkdir -p /mnt/dvd

# mount DVD
mount /dev/sr0 /mnt/tmp

# copy contents (need to check this)
cp -r /mnt/tmp/* /mnt/dvd

# umount DVD
umount /mnt/tmp

# create local repo file
echo "[local-dvd-repo]" > /etc/yum.repos.d/local.repo
echo "name=Local copy of DVD" > /etc/yum.repos.d/local.repo
echo "gpgcheck=0" > /etc/yum.repos.d/local.repo
echo "baseurl=file:///mnt/dvd" > /etc/yum.repos.d/local.repo

# check repolist is working
yum repolist
