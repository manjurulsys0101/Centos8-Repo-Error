cd /etc/yum.repos.d
sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
dnf clean all
dnf swap centos-linux-repos centos-stream-repos -y
ll
dnf update
reboot
