## Primary VS secondary Group

#primary group is automatically created for you.

group

# the first group you see is the primary group. every other group after the first is the secondary group. you can only be be in one primary group but you can be in multiple secondary group.


you can change the primary group byh using this usermod cammand

$sudo usermod -g sambashare ubuntu

ll <name of file>

-|rw-|rw-|r--

-(regular file)|rw-(user permission)|rw-(group permission)|r--(anybody else who is not a user or group)

## controlling access to files and folders based on group membership

mkdir /home/rebel-alliance
ls -l /home # to show all group and permissions. as you can see the root root owns rebel-alliance folder

sudo addgroup rebel-alliance

grep rebel /etc/group

sudo chgrp rebel-alliance /home/rebel-alliance/

ls -l /home

# adding users to group
sudo usermod -aG rebel-alliance billions

grep rebel /etc/group
# you will see it has a user user billions

su billions
cd /home/rebel-alliance

touch new-year-plans.txt
##to change the permission
sudo chmod g+rwx /home/rebel-allaiance/

touch new-year-plans.txt
ls -al

the file is own by billions to change that
chgrp rebel-alliance new-year-plans.txt

ls -al
ls -l

## to remove the read permission for others
chmod o-r <name of file>
chmod o-r new-year-plans.txt


