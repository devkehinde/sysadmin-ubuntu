cd /Documents
ls -l

#chown #change owner

sudo useradd billions

sudo chown billions <sometext.txt>

# to change the owner for  folder
sudo chown -R billions ~/Documents
ls -l


# changing owner and group
sudo chown billions:sales <sometext.txt>

#changing just the group
sudo chown :sales <sometext.txt>
sudo chgrp kehinde <sometext.txt>
sudo chgrp kehinde *

### sticky bit
sudo chmod g+s ./Sales
ls -l

###### POSIX BASED FILE PERMISSION
ugo = user group other

ls -l
chmod ugo=rw <name of file>
chmod u+rw <name of file>
chmod u-r <name of file>

###ACL ACCESS CONTROLS
cat /etc/fstab
sudo tune2fs -l /dev/sda5 | grep "mount options"

# -m = modify, -s= remove, -x = override
setfacl -m u:<username>:rw ./<name of file>

getfacl <file name>

##for group
setfacl -m g:Marketing:rw ./<name of file>
setfacl -m g:Sales:r ./<name of file>

# PERMISSION
setfacl -m g:Marketing:r ./<name of folder>

getfacl <file name>

##setting default permission
setfacl -m d:g:Marketing:r ./<name of folder>

getfacl <file name>
