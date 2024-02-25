man useradd

ls /home

sudo useradd -d /home/kehinde -m kehinde

ls /home


## adding password to user kehinde
sudo passwd kehinde
##########################

which useradd
/usr/sbin/useradd

cat /usr/sbin/useradd

adduser is not a binary file it is a pro script that makes adding user abit easier

man adduser 
adduser is a script
it does the same thing as useradd

sudo adduser billions

ls /home

cat /etc/group | grep billions

## MODIFYING USER WITH USERMOD
# modifying user after creation maybe adding them to a group.

# assign a user to an additional group, lock a user, unlock a user,move the home directory or set expiration date to the account

#adding user to the sudo group
sudo usermod -aG sudo kehinde
cat /etc/group | grep billions
now billions is part of the sudo group

su billions
to check if billions has sudo permission

exit 

##locking an account
sudo usermod -L kehinde
su kehinde 
## after inserting the password you will get Authentication failure because the the account is locked.

#to see how that works 
cat /etc/passwd | grep kehinde

cat /etc/shadow | grep kehinde

#pay attention to the string of characters you'd notice "!" which means the account is locked

## To Unlock
sudo usermod -U kehinde
cat /etc/shadow | grep kehinde
## notice the ! wont be there any more

#etc/passwd file explained
cd /etc
ls passwd
cat /etc/passwd


### editing password
man vipw

#vipw edits the password in a way that won't let it it get corrupt

sudo vipw
## open the file with nano
ctrl k # to delete
ctrl o # to write
ctrl x # to exit

tail /etc/passwd

## looking at etc/shadow file
sudo cat /etc/shadow

#modify with vipw -s

## REMOVING USER
man deluser
man userdel

tail /etc/passwd

sudo find / -user billions

sudo deluser --remove-all-files --backup-to /user-backups/billions