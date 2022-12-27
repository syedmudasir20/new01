172.174.122.98dnf update -y
dnf update -y
vim /etc/hosts 
ping -c 5 eoc-controller
vim /etc/hosts 
sed -i 's/enforcing/disabled/g' /etc/selinux/config 
setenforce 0
sestatus
systemctl disable --now firewalld
systemctl status firewalld --no-pager
systemctl enable --now chronyd
systemctl status chronyd --no-pager
chronyc sources -v
dnf install epel-release -y
dnf -y install ansible
ansible --version
ansible -m setup localhost | grep -i ansible_python_version
ssh-keygen -t rsa -N ''
ssh-keyscan eoc-controller >> ~/.ssh/known_hosts
ssh-copy-id eoc-controller
passwd
ssh-copy-id eoc-controller
hostnamectl set-hostname eoc-controller
ip a s
ls
vim ~/.ansible.cfg 
su - admin
ansible --vesrion
ansible --version
cat /etc/ansible/ansible.cfg
useradd -m -G wheel admin
echo "linux" | passwd --stdin admin
sed -e '/%wheel/ s/^#*/#/' -i /etc/sudoers
cat >> /etc/sudoers <<EOF
%wheel        ALL=(ALL)       NOPASSWD: ALL
EOF

su - admin
ansible-doc dnf | grep -i "Examples" -A 40
passed
passwd
ansible-doc -l
su - admin
