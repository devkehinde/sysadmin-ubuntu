pathname.com
man hier
cd /
ls

sudo apt install tree #help visualize

tree -d -L 2 #going 2 levels deep

cd /etc
ls
cd ../

cd /home
cd opt

cd ../

cd var
ls

cd log
tail auth.log
tail syslog

##
sudo apt update
sudo apt install lynis

man lynis
sudo lynis --check-all --quick

cd /opt
man wget
sudo wget <download link>

sudo tar -zxvf <name of file>
