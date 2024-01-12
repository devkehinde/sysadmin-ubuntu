system init is the first service that turns on.
it is the first process that runs

# three common sys init
sys V init
upstart # was a replacement for sys V init 2006
systemd #2010 systemd.io

# to what what sys you are running
systemctl

ps aux # check process id 1

cd /sbin

ls -l i*
man init

##SYS V INIT
ps aux | head

#check PID 1

cd /etc/
cd rc.d

pwd

# two impotant file here 
# rc.local and rc.sysinit
# never modify the sysinit
#rc.local is designed to hold your changes


#run level
run level dictates what state your system is currently in
run level 0 = shut down
run level 6 = rebooting
run level 1 = single user mode #mainnet mode
you can track them in a file called init table

cat /etc/inittab

## to know your run level 
runlevel

who 
who -r

sudo init 3
sudo telinit 5 

#managing services with sys v init
chkconfig

sudo chkconfig httpd on #off

sudo service httpd status
sudo service httpd start
sudo service httpd stop
sudo service httpd restart

chkconfig --list

man chkconfig

sudo chkconfig httpd off

sudo chkconfig --list | grep httpd
sudo chkconfig --level 35 httpd on


## SYSTEM D

ps aux | head
ls -lh /usr/sbin

cd /lib/systemd

ls -lh


#in this place everything here is from the distro and application you install
cd /lib/systemd/system

# for custom system d 
cd /etc/systemd/system
ls
# can be overwritten

target is how systemd knows what to do.

ls *.target

#check the run level

systemctl get-default
sudo systemctl set-default multi-user.target

sudo systemctl isolate multi-user.target
#####
sudo systemctl enable ssh
sudo systemctl enable --now ssh
#############
sudo apt install apache2
ls ap*
sudo systemctl status apache2
sudo systemctl enable --now apache2

sudo systemctl start apache2 #stop #restart

ls /etc/systemd/system/multi-user.target.wants


sudo systemctl deamon-reload
