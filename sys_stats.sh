#!/bin/bash

#************************************#
#******* OUTPUT SYSTEM STATS ********#
#************************************#

# Make a directory called System_Stats and change directories to that directory
# Try to make the output for each file look as neat and organized as you can.
sudo mkdir System_stats
cd System_stats

# Output the following information to a file called kernel
    # 1. Kernel Name
    echo "KERNEL NAME" > kernel
    uname -s >> kernel
    # 2. Kernel Release
    echo "KERNEL RELEASE" >> kernel
    uname -r >> kernel
    # 3. Kernel Version
    echo "KERNEL VERSION" >> kernel
    uname -v >> kernel
    # 4. The operating system
    echo "THE OPERATING SYSTEM" >> kernel
    uname -o >> kernel


# Output the following information to a file called network
    # 1. Do not print any serial numbers or sensitive information related to the system
    # 2. All network interfaces
    sudo lshw -class network -sanitize > network
    
# Output the following information to a file called disk.html
    # 1. All disks 
    # 2. The output should include html tags, i.e. <html></html>
    touch disk.html
    sudo lshw -class disk -html > disk.html


# Output the following information to a file called cpu
    # 1. The first five lines of the command lscpu
    lscpu | head -n 5 > cpu
    # 2. The last 12 lines of the command lscpu
    lscpu | tail -n 12 >> cpu

# Output the following information to a file called block_dev
    # 1. Only the name, size, and type of the block devices
    # 2. The output should use ascii characters for any tree formatting
    touch block_dev
    lsblk -o NAME,SIZE,TYPE > block_dev.txt
    
    
# Output the following information to a file called sata
    # 1. Any Sata devices connected to the machine along with human readable sizes of the devices
    # 2. More specific information about each device that is connected to the machine
    lsscsi -s
    sudo hdparm pi
