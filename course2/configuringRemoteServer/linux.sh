## to check if ssd has been installed
man sshd_config 
sudo apt update

sudo apt install openssh-server

man sshd_config

## if you see the manual apage it means sshd has been installed

## for networking 
### first we need to shut down our server

sudo shutdown -h now

ip addr | grep inet

ping the ip address shown

sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y

# enabling firewall

sudo ufw status
sudo ufw allow ssh

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

sudo ufw status 
sudo ufw status verbose

sudo service ssh start
sudo service ssh status


##### CONNECTING REMOTELY
w
whoami

putty

# public key vs private key
ssh-keygen
ls -alh
cd .ssh
ls -alh

ls
cat id_rsa.pub

## to copy id
man ssh-copy-id

ssh-copy-id ubuntu@192.168.100.238
ssh ubuntu@192.168.100.238

cd .ssh
ls
cat authorized_keys

### goto putty
sudo cat /var/log/auth.log
sudo grep invalid /var/log/auth.log | wc -l
sudo grep root /var/log/auth.log | wc -l

##########################
USING PUTTYGEN
manually create 
mkdir .ssh
chmod 700 .ssh

ls -alh

cd .ssh
touch authorized_keys
chmod 600 authorized_keys
ls -alh

# open puttygen
# click generate
# copy public key

echo "<paste public key>" >> authorized_keys

cat authorized_keys
##############################
Troubleshooting

sudo tail -n 20 /var/log/auth.log

################
Are you sure you want to continue connecting (yes/no/[fingerprint])?
Host key verification failed.
devpro-win@ubuntu:~/.ssh$ vim config
devpro-win@ubuntu:~/.ssh$ vim config
devpro-win@ubuntu:~/.ssh$ vim config
devpro-win@ubuntu:~/.ssh$ ssh ubuntu1
