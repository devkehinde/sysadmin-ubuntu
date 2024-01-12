##LESSON 1
## hardware abstraction layer
## kernel is dealing with the hardware for

# lspci is a command in Linux used to display detailed information about all the PCI (Peripheral Component Interconnect) buses and devices connected to your system. When you run lspci in the terminal, it provides a list of all PCI devices, such as graphic cards, network adapters, sound cards, USB controllers, etc., along with their respective details like vendor information, device IDs, bus information, and more
lspci

# lsusb is a command used in Linux to list all USB devices connected to the system. Similar to lspci which deals with PCI devices, lsusb specifically focuses on USB devices.

# When you run lsusb in the terminal, it provides information about the USB controllers and the devices connected to them. It lists details such as the vendor and product IDs, which can help in identifying the connected USB devices.

# This command is quite handy for checking if a USB device is recognized by the system and for getting an overview of all USB devices connected to your Linux machine.
lsusb
# The ip address command in Linux is used to display and manage network interfaces and their addresses. When you run ip address in the terminal, it shows information about all network interfaces on your system along with their associated IP addresses, MAC addresses, network masks, and more.

# This command is particularly useful for checking the current network configuration, verifying IP addresses assigned to different interfaces (like Ethernet or Wi-Fi), and ensuring connectivity. It provides a detailed overview of the network setup on your Linux machine.
ip address

cd /dev
# The /dev directory in Linux is a critical part of the filesystem hierarchy and is often referred to as the "device directory." It contains special files that represent and interact with devices connected to the system, including hard drives, partitions, USB drives, serial ports, and more.

# Devices in Linux are represented as files, and these device files in /dev act as interfaces for communication between software and hardware. For example:

# /dev/sda represents the first SATA or SCSI hard drive.
# /dev/ttyS0 represents the first serial port.
# /dev/null represents a special file that discards any data written to it.
# /dev/random and /dev/urandom are files that provide access to the random number generator.
# These device files allow programs to read from and write to hardware devices as if they were regular files, enabling seamless interaction between software and hardware components in the Linux system.

lsmod
# The lsmod command in Linux is used to display the currently loaded kernel modules. Kernel modules are pieces of code that can be dynamically loaded and unloaded into the running kernel. These modules can add functionality to the kernel, such as supporting new hardware, file systems, or additional features.

# When you run lsmod in the terminal, it lists all the currently loaded kernel modules along with information about their size, dependencies, and their usage count (i.e., how many times they are being used).

# This command is helpful for checking which kernel modules are currently active in the system, which can be essential for troubleshooting hardware issues, managing device drivers, or understanding the system's configuration.
lsmod | grep usbnet
lsmod | grep bluetooth


## removing hardware
sudo rmmod module_name

# Replace module_name with the name of the kernel module you wish to unload. It's essential to use sudo or have appropriate permissions because unloading modules often requires administrative privileges.

# Before using rmmod, it's crucial to ensure that the module is not in use by any processes. Removing a module that's actively being used by the system can lead to instability or cause unexpected behavior. Also, some modules may have dependencies, and unloading a module might affect other modules relying on it, so use this command carefully and only when necessary.
sudo rmmod bluetooth

## Where device is detected

# The /etc/modprobe.d directory in Linux is a location where configuration files related to kernel module management are stored. It's used to customize and configure various options for kernel modules, including setting parameters, blacklisting certain modules, and defining module aliases.

# Within /etc/modprobe.d, you can find configuration files with a .conf extension that contain specific directives and settings for individual modules or general module handling.

# For example:

# Blacklisting modules: You can create a configuration file (e.g., blacklist.conf) to prevent certain modules from being loaded automatically during system startup.
# Module options: Configuration files here might contain options or parameters that get passed to specific modules when they are loaded.
# These configurations help in managing the behavior of kernel modules, controlling their loading, and customizing their functionalities based on system requirements. It's a powerful way to fine-tune the behavior of modules on a Linux system

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
# GRUB (Grand Unified Bootloader) is a widely used boot loader for Linux and many other operating systems. It's responsible for loading the operating system kernel into memory during the system boot process.

# Key functions of GRUB include:

# Boot Management: GRUB allows users to select which operating system to boot if multiple operating systems are installed on the same machine. It presents a menu where you can choose the OS to start.

# Loading the Kernel: After the OS is selected, GRUB loads the kernel into memory and hands over control to the operating system, initiating the boot process.

# Configuration: GRUB's configuration file (/boot/grub/grub.cfg in many distributions) contains settings for boot options, kernel parameters, default boot entries, etc.

# Rescue Mode: GRUB provides a rescue mode that allows users to recover the system if the boot configuration is corrupted or if there are issues with the boot process.

# Customization: Users can modify GRUB's behavior by editing its configuration file or using tools provided by the distribution to configure the boot loader.

# GRUB is an essential component of the boot process in many Linux distributions, serving as the intermediary between the firmware (like BIOS or UEFI) and the operating system kernel, making it a critical part of system startup and management.

sudoedit /etc/default/grub
sudo update-grub2

#################################################3
#THE SHELL
ps # process show
# The ps command in Linux is used to view information about currently running processes. When you run ps in the terminal without any options, it typically displays a snapshot of processes running in the current terminal session.

# Here are a few common options used with ps:

# ps: Shows processes associated with the current terminal.
# ps aux: Displays a detailed list of all running processes across all users, showing the user, process ID (PID), CPU and memory usage, etc.
# ps -e: Lists all processes on the system.
# ps -ef: Shows a full list of processes with additional details like the parent process ID (PPID) and the command used to start the process.
# The ps command is handy for monitoring and managing processes on a Linux system, providing information about what programs are currently running and their resource consumption.

## what is command execution?
## program is written as source code, source code is complied into binary the karnel knows what to do with binary, know how to execut and perform various action inside of the binary file.
ps
which bash
# The command which bash in Linux is used to locate the executable file (binary) of the Bash shell. When you run which bash in the terminal, it shows the path to the Bash executable.

# For example, if your system's Bash shell is located at /bin/bash, running which bash would output /bin/bash, indicating the full path to the Bash executable file. This command is helpful in determining the location of the Bash interpreter, which is the default shell for many Linux distributions.
##########################
ls

# The ls command in Linux is used to list directory contents. When you run ls in the terminal without any arguments, it displays the files and directories in the current working directory.

# Here are a few common options used with ls:

# ls: Lists files and directories in the current directory.
# ls -l: Displays a long format listing that includes additional information like permissions, ownership, size, and timestamps.
# ls -a: Shows all files, including hidden files (those starting with a dot .).
# ls -h: Prints file sizes in a human-readable format (e.g., kilobytes, megabytes).
# ls -R: Lists files and directories recursively, showing subdirectory contents as well.
# Using ls with different options allows you to view and navigate through the contents of directories and gather detailed information about files and directories within the terminal.

#############
history
# The history command in Linux displays a list of previously executed commands in the terminal session. When you run history, it shows a numbered list of commands along with their respective numbers.

# You can use these numbers to rerun specific commands from your command history. For instance, to rerun a command from history, you can type an exclamation mark ! followed by the command number.

# Here are a few common ways to use history:

# history: Lists the recent command history with line numbers.
# history n: Shows the last 'n' commands in the history.
# !n: Executes the command with the line number 'n' from the history.
# The history command is helpful for recalling and reusing previously executed commands, especially when you need to repeat a command or find a command you used earlier in the session.

##################
uname
uname -a #all
uname -i
uname -m
getconf LONG_BIT

# The uname command in Linux is used to display certain system information about the operating system and the system hardware.

# When you run uname without any options, it typically displays the operating system name:

# uname: Shows the operating system name.
# Here are some common options used with uname:

# uname -a: Displays all available system information, including the kernel name, node name (network node hostname), kernel release, kernel version, machine hardware name, and processor type.
# uname -s: Shows the kernel name.
# uname -r: Prints the kernel release.
# uname -v: Displays the kernel version.
# uname -m: Shows the machine hardware name.
# uname -p: Prints the processor type.
# These options allow you to retrieve specific information about the system, kernel, and machine hardware, which can be helpful for various system administration tasks and determining system details.


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

# grep is a powerful command-line utility in Unix and Linux used for searching text patterns in files or streams of data. It stands for "Global Regular Expression Print".
pgrep bash
# The pgrep command in Linux is used to find the process IDs (PIDs) of processes based on their names. When you run pgrep followed by a process name, it returns the PIDs of the processes that match that name.

# For example, pgrep bash will search for processes with the name "bash" and display their PIDs.

# This command is particularly useful when you want to find the PID of a specific process without needing to parse the output of ps or when you need to automate tasks that involve identifying and managing processes based on their names.
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

# The jobs command in Linux is used to display a list of jobs that are currently running or suspended in the background within the current shell session. Jobs are processes started from the current shell session, either running in the background or suspended.

# When you run multiple commands in a shell session, you can manage them as jobs. Some common scenarios include:

# Running a command in the background by appending & at the end of the command.
# Suspending a running foreground process by pressing Ctrl + Z.
# The jobs command allows you to view a list of these background or suspended jobs, each identified by a job number, along with their status.

# Here are a few options with jobs:

# jobs: Displays a list of jobs running or stopped in the current shell session.
# jobs -l: Shows the process ID (PID) along with job status and command for each job.
# You can manage these jobs using various commands like bg, fg, and kill. For instance:

# bg %job_number: Sends a job to run in the background.
# fg %job_number: Brings a background job to the foreground.
# kill %job_number: Terminates a job using its job number.
# Remember, job numbers can be used to reference specific jobs when using these control commands (%job_number).
%1 # to go to background running progams depending on the number

#fg bg backround foreground
fg1
bg1

systemctl
# systemctl is a powerful command-line utility used in systems running systemd, a system and service manager for Linux. It allows users to manage system services, examine their status, start or stop services, enable or disable them at boot, and perform various other system-related tasks.

# Here are some common subcommands and operations with systemctl:

# Managing Services:

# systemctl start service_name: Starts a service.
# systemctl stop service_name: Stops a service.
# systemctl restart service_name: Restarts a service.
# systemctl status service_name: Displays the status of a service.
# systemctl enable service_name: Enables a service to start automatically at boot.
# systemctl disable service_name: Disables a service from starting automatically at boot.
# Working with Units:

# systemctl list-units: Lists all loaded units (services, sockets, devices, etc.).
# systemctl list-unit-files: Lists all available unit files and their states (enabled/disabled).
# systemctl show unit_name: Shows detailed information about a specific unit.
# Managing the System:

# systemctl reboot: Reboots the system.
# systemctl poweroff: Powers off the system.
# systemctl suspend: Puts the system into suspend mode.
# systemctl hibernate: Puts the system into hibernate mode.
# systemctl provides a centralized way to manage and control services, system states, and units, making it a fundamental tool for system administrators and users managing Linux systems using systemd.

########## EXECUTION PRIORITIES
man nice
df ih
sudo sha256sum /dev/sda5
sudo nice -12 sha256sum /dev/sda5

top
## NI means nice

##
# The nice command allows users to assign a "niceness" value to a command, which ranges from -20 (most favorable scheduling) to 19 (least favorable). By default, processes launched without the nice command have a niceness value of 0.

# The basic syntax of nice is:
# nice -n niceness_value command
# nice -n 10 some_command
# nice -n -10 some_command

sudo nice -12 sha256sum /dev/sda5 ##renice incase the program has been executing
sudo renice 10 <PID> -u <user>

## terminating process
# The kill command in Linux is used to terminate or send signals to processes. It allows users to end running processes by specifying their process IDs (PIDs) or names.

# The basic syntax for kill is:
# kill [options] PID

# Here are some common options used with kill:

# -TERM or -15: Sends the termination signal (SIGTERM) to the specified process. This is the default signal sent by kill.
# -KILL or -9: Sends the kill signal (SIGKILL) to forcefully terminate a process. This signal cannot be ignored or caught by the process and instantly terminates it.
# -PID: Sends the signal to a specific process ID.
# Examples:

# kill 1234: Sends the default termination signal (SIGTERM) to the process with PID 1234.
# kill -9 5678: Sends the kill signal (SIGKILL) to forcefully terminate the process with PID 5678.
# It's generally recommended to first try sending a termination signal (kill) to gracefully stop a process before resorting to the kill signal (kill -9) which forcefully terminates it. The SIGTERM signal allows the process to perform cleanup operations before exiting, while SIGKILL does not give the process a chance to clean up and might result in data loss or corruption in some cases.

# Always use caution when using kill as terminating processes abruptly can lead to unexpected behavior or data loss.

kill <PID>
kill -l ##list of all the ways you can kill a process. but are important to know 1) SIGHUP(stop and restart the signal) 9) SIGKILL(killing the process) 15) SIGTERM (terminate )

sudo kill -9 <PID>

killall chrome #kill all the process instance