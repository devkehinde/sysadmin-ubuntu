The mount command in Linux is used to attach (mount) file systems and devices to specified directories in the file system. This allows you to access the files and directories stored on those file systems.

Here's the basic syntax of the mount command:

mount [options] device directory

device: The block device or remote file system to be mounted.
directory: The directory where the file system is to be mounted.
Commonly used options with mount include:

-t filesystem_type: Specifies the type of file system. For example, -t ext4 for an ext4 file system.
-o options: Allows you to specify additional mount options, such as rw (read-write) or ro (read-only).
-a: Mounts all file systems listed in /etc/fstab.
-r: Mounts the file system in read-only mode.
Here are some examples of using the mount command:

1. Mount a USB Drive:

mount /dev/sdb1 /mnt/usb

This command mounts the partition /dev/sdb1 on the USB drive to the directory /mnt/usb.

2. Mount a CD/DVD:

mount /dev/cdrom /mnt/cdrom

This command mounts the CD/DVD drive to the directory /mnt/cdrom.

3. Mount All File Systems from /etc/fstab:

mount -a

This command mounts all file systems listed in the /etc/fstab file.

4. Mount a Remote NFS File System:

mount -t nfs server:/path /mnt/nfs

This command mounts a remote NFS (Network File System) share to the directory /mnt/nfs.

Remember to use the umount command to unmount file systems when you are done using them:


umount /mnt/usb

The mount command is an essential tool for managing file system access and is frequently used in system administration tasks.
##################################

The lsblk command in Linux is used to list information about all available block devices, such as hard drives and flash drives, along with their partitions and mount points. The information is presented in a tree-like format.

Here's the basic syntax of the lsblk command:

lsblk [options]

Commonly used options with lsblk include:

-a or --all: Show all devices, including empty ones.
-f or --fs: Display information about file systems on devices.
-o or --output: Specify the columns to display.
Here's an example of using lsblk:


lsblk

This command displays a hierarchical view of block devices, partitions, and mount points.

Example output:


NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 232.9G  0 disk 
├─sda1   8:1    0   512M  0 part /boot/efi
├─sda2   8:2    0 219.5G  0 part /
└─sda3   8:3    0  12.9G  0 part [SWAP]
sdb      8:16   1   7.5G  0 disk 
└─sdb1   8:17   1   7.5G  0 part /media/usb

In this example:

sda is a hard drive with multiple partitions.
sdb is a USB drive with one partition mounted at /media/usb.
You can customize the output using options like -a, -f, and -o. For example:


lsblk -a

This command shows all devices, including empty ones.

lsblk is a useful command for quickly checking the storage devices connected to your system and their associated partitions.
lsblk
################################

fdisk and gdisk are both command-line utilities used for disk partitioning, but they operate on different partition table formats: fdisk is used for Master Boot Record (MBR) partitioning, while gdisk is used for GUID Partition Table (GPT) partitioning.

fdisk:
Usage: fdisk is used for disk partitioning and management, and it's commonly used on systems that use the MBR partitioning scheme.

Partition Table Format: MBR (Master Boot Record)

Command Example:

sudo fdisk /dev/sdX
Key Features:

Limited to 2.2TB of storage space for a single partition.
Commonly used on BIOS-based systems.
gdisk:
Usage: gdisk is a GPT-aware partitioning tool, designed for managing disks using the GPT partitioning scheme.

Partition Table Format: GPT (GUID Partition Table)

Command Example:


sudo gdisk /dev/sdX
Key Features:

Supports larger disk sizes and more partitions compared to MBR.
Required for UEFI-based systems but can also be used on BIOS-based systems.
Usage Considerations:
UEFI Compatibility: If you are dealing with a system that uses UEFI (Unified Extensible Firmware Interface) for booting, GPT is often recommended. UEFI systems are more compatible with GPT.

Legacy Systems: For older systems with BIOS and no UEFI support, MBR may be the only option.

Disk Size: GPT is preferable for very large disks, typically over 2TB, due to its ability to handle larger partition sizes.

Number of Partitions: GPT supports a larger number of partitions compared to MBR.

In summary, the choice between fdisk and gdisk depends on the partition table format you want to use and the specific requirements of your system. If you're working with modern systems and need support for large disks or UEFI, GPT and gdisk are often the preferred choices. For compatibility with older systems or if you're working with smaller disks, MBR and fdisk may be appropriate.


parted is another command-line utility used for disk partitioning on Linux systems. It's a versatile tool that supports both MBR and GPT partition tables and provides a more interactive interface compared to fdisk and gdisk. parted allows you to create, delete, resize, and manipulate partitions on your storage devices.

Here's a basic usage example of parted:

sudo parted /dev/sdX

This command starts an interactive session with parted for the specified device (/dev/sdX). Once in the parted interactive mode, you can use various commands to perform partition-related tasks.

Example parted Commands:
Print Partition Table:

print
Create a New Partition:

mkpart primary [filesystem-type] start end
Replace [filesystem-type] with the desired file system type (e.g., ext4), start with the starting point of the partition, and end with the ending point.

Delete a Partition:

rm [partition-number]
Replace [partition-number] with the number of the partition you want to delete.

Resize a Partition:

resizepart [partition-number] end
This command resizes the specified partition to the specified ending point.

Quit parted Interactive Mode:

quit
parted provides a flexible and user-friendly interface for managing partitions. It's particularly useful when you need to perform more complex partitioning tasks or if you prefer an interactive experience. Similar to other partitioning tools, use caution to avoid data loss when making changes to disk partitions.

Always ensure you have a backup of important data before making significant changes to disk partitions.

fdisk: MBR
gdisk: GPT
parted: can do both MBR and GPT

sudo fdisk /dev/sdb

## p n w = print new write

sudo gdisk /dev/sdc

## p n w = print new write

################################

sudo parted

help
print devices
print
select /dev/sdd

mkpart

mklabel
gpt
storage

mkpart ext4 1 1000

quit # to get out

sudo parted /dev/sdd
help

