# EXTENDED FILE SYSTEM

- EXT2, EXT3, EXT4
- volume up to 1EB
- files upto 16TB
- Unlimited Subdirectories
- Journaling

# EXTENTS FILE SYSTEM(XFS)

- Developed by SGI(silicon graphic)
- File up to 1PB
- Extents (Block Ranges)
- Journaling

# B-Tree FILE SYSTEM (BTRFS)

- Developed by Sun
- Volumes up to 8EB
- Files upto 8EB
- Snapshots
- Journaling

ls /usr/sbin/mkfs*

lsblk -f

sudo mkfs.ext4 /dev/sdb1
or 
sudo mkfs -t ext4 /dev/sdc1

# watch 8 episode 4
swap #

##################
## Maintaining FS
cat /etc/fstab

fsck

sudo fsck -A
sudo fsck /dev/sdb1

## Disk Monitoring
df 
df -h
du 
du -h

sudo du -chd 1 /
sudo du -chd 1 /snap

input output operation per seconds [iops]

# sysstat iotop
sudo apt install sysstat iotop

iostat
iostat -y 1

##########
sudo iotop
#########################
# MOUNTING REMOVABLE
cd mnt
ls
ls -l
##show where storage is mounted

cd /media/<username>
ls

sudo umount /media/<username>/USBDRIVE

lsblk
dmesg
dmesg -w

cd /mnt
ls
sudo mkdir usb
sudo mount /dev/sdb1 /mnt/usb
sudo umount /mnt/usb

mount

###### mounting fixed disk
lspci
lsblk

