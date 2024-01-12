
ldconfig -v 
ldconfig -v | less

ldd /bin/bash
ldd vim

## configuring your own lib

#from home cd .local
mkdir bin
mkdir lib

sudo ldconfig -n /home/kehinde/.local/lib #letting ld know about this folder #

##############
cd /etc/ld.so.conf.d
ls
sudo cp x86 64-linux-gnu.conf ./contom.conf

sudoedit custom.conf

## kehinde customs library
/home/ubuntu/.local/lib

######
sudo apt install mc
sudo apt search apache2

sudo apt list apache2
sudo apt list mysql*


sudo apt list nginx
sudo apt list -a nginx

sudo apt install nginx

# installing a from file
sudo apt install ./<location of file>

## webmin

sudo apt update
sudo apt upgrade
sudo apt dist upgrade
sudo apt remove mc
sudo apt autoremove