# The .bashrc file is a script file that is executed whenever a new interactive Bash shell is started for a user. It is commonly used to customize the behavior of the Bash shell for a specific user by setting environment variables, defining aliases, and configuring various settings.

# The file is located in the user's home directory and is named .bashrc (note the leading dot, making it a hidden file). You can edit it using a text editor like nano, vim, or gedit. Here's an example using nano:
## .bashrc is the bash being launch when you login to your distro
nano ~/.bashrc
nano .bashrc #edit bash
nano .profile #sometime the path is here

## add the code below in .profile
PATH=".:PATH"

source .profile
alias

##making a variable available across shell
NICKNAME="ken laptop"
export NICKNAME

echo 'Welcome to my Bash shell!

#set -o allexport

cheat.sh


## function in bash
cheat() {curl "https://cheat.sh/$1";}

source .bashrc
Remember to save the changes after editing the .bashrc file, and the changes will take effect the next time you start a new Bash shell session.

# It's important to note that changes to .bashrc apply only to the user for whom the file is modified. If you want system-wide changes, you might consider modifying the system-wide configuration file, typically located at /etc/bash.bashrc or /etc/bashrc, depending on the Linux distribution.


## MANAGING FILES
pwd
ls /<point somewhere>

# colors of file
# green=executable file
# blue=a link to a file
# white=a file

ls -l #long listing
ls -lh #human readable
ls -lah #everything in the folder

##VIEWING FILE
cat <name of file>
more <name of file>
less <name of file>

head <name of file> #first ten line
tail <name of file> #last ten line
head -n 20 <name of file> 


sudo tail /var/log/syslog
sudo tail -f /var/log/syslog #monitor the log

# MOVING FILES
mv ## moving and renaming

#move all textfile to home: note it is irreversable
mv  *.txt /home/kehinde

#moving and renaming at the same time 
mv <file> /<path you want to move it to/new file name>

## DIRECTORY

## creating directory
mkdir books

## moving file from another directory to current
mv ../notepad.txt .
mv ~/Document/<name of file> .

## DELETING
rm # for file
rmdir # directory

rm -rf Books # force delete



