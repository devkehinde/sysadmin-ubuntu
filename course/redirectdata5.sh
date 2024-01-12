##standard out 

# command1 | command2

# throw output in command1 into command2

dmesg | grep sda5
dmesg | less

The dmesg command in Linux is used to display the messages from the kernel ring buffer. The kernel ring buffer is a circular buffer that stores messages generated by the kernel and various kernel modules during the system startup process and while the system is running.

Here's the basic syntax of the dmesg command:

dmesg [options]

Commonly used options include:

-c: Clear the kernel ring buffer after displaying its contents.
-H: Human-readable output, showing timestamps and durations.
-x: Display additional information in a more human-readable format.
Here are some examples of using dmesg:

1. Display Kernel Messages:

dmesg

This command displays the entire kernel ring buffer, showing messages related to hardware, device drivers, and other kernel-level events.

2. Display Human-Readable Timestamps:

dmesg -H

The -H option formats the output with human-readable timestamps.

3. Clear the Kernel Ring Buffer:

dmesg -c

This command clears the kernel ring buffer after displaying its contents.

4. Display Additional Information:

dmesg -x

The -x option provides additional information in a more human-readable format.

The dmesg command is useful for diagnosing hardware-related issues, checking for kernel module loading, and viewing messages related to system events. It can be particularly helpful when troubleshooting issues during the system boot process or identifying problems with hardware devices.

man xargs

##creating folder with xargs
# create folder input names of directory

cat folder.txt | mkdir
#create directory with xargs
cat folder.txt | xargs mkdir
###############################
# REDIRECT TO TEXT FILE
#lets us ls -lh for example

ls -lh > list.txt
ls -lh | sort > list.txt

ls -lh > list.txt
ls -lh | sort >> list.txt #append

#throwing output away
ls -lh > /dev/null

## bette instance
find ~/ -name *.doc

##searching the whole hard drive
find / -name *.doc

find ~/ -name *.doc > /dev/null

#standard err # redirect only the err 
find ~/ -name *.doc 2> /dev/null

# write to a file
find ~/ -name *.doc 2> /dev/null | tee list.txt