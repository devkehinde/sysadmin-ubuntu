##LESSON 1
## hardware abstraction layer
## kernel is dealing with the hardware for
lspci
lsusb
ip address

cd /dev

lsmod
lsmod | grep usbnet
lsmod | grep bluetooth


## removing hardware
sudo rmmod bluetooth

## Where device is detected
cd /etc/modprobe.d

##reload hardware
modprobe -v bluetooth

## blacklist not to load some hardware
###############################################

sudo apt install open-vn-tools
sudo systemctl enable --now open-vn-tools

################################################

## GRUB
## grand unified boot loader

sudoedit /etc/default/grub
sudo update-grub2
#################################################3
#THE SHELL
ps # process show

## what is command execution?
## program is written as source code, source code is complied into binanry the karnel knows what to do with binary, know how to execut and perform various action inside of the binary file.
ps
which bash
ls
history
uname
uname -a #all
ps aux
pwd # print working directory
cd /etc # change directory to etc
echo Hello
touch log.txt #create log file
cp log.txt log.txt.bak #copy log to backup
cat log.txt #
nano log.txt #open text editor write something execute with cat
less <textfile> #to view large textfile
more
gedit log.txt

######################
#PROCESSES
ps
ps -a
ps a
ps -aux

pgrep bash
pgrep -u kehinde bash
ps -aux | grep bash

top
# type M (memory)
# type P (processor)

#to kill a process
kill 3009

#available space
free

# to show your programs running in background
jobs

%1 # to go to background running progams depending on the number

#fg bg backround foreground
fg1
bg1

systemctl

########## EXECUTION PRIORITIES
man nice
df ih
sudo sha256sum /dev/sda5
sudo nice -12 sha256sum /dev/sda5

top
## NI means nice

##
sudo nice -12 sha256sum /dev/sda5 &

##renice incase the program has been executing
sudo renice 10 <PID> -u <user>

## terminating process
kill <PID>
kill -l ##list of all the ways you can kill a process. but are important to know 1) SIGHUP(stop and restart the signal) 9) SIGKILL(killing the process) 15) SIGTERM (terminate )

sudo kill -9 <PID>

killall chrome #kill all the process instance
