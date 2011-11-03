    ln /system/etc etc -s
    ln /sys/kernel/debug d -s
    ln /system/vendor vendor -s

# create mountpoints
    mkdir mnt
    mkdir mnt/sdcard
    mkdir mnt/nand
    mkdir mnt/usb

# Create cgroup mount point for cpu accounting
    mkdir acct
    mkdir acct/uid

# Backwards Compat - XXX: Going away in G*
    ln /mnt/sdcard sdcard -s

    mkdir system
    mkdir data 
    mkdir cache 
    mkdir config

# Directory for putting things only root should see.
    mkdir mnt/secure

# Directory for staging bindmounts
    mkdir mnt/secure/staging

# Directory-target for where the secure container
# imagefile directory will be bind-mounted
    mkdir mnt/secure/asec

# Secure container public mount points.
    mkdir mnt/asec

# Filesystem image public mount points.
    mkdir mnt/obb

    mkdir sd-ext

# Create cgroup mount points for process groups
    mkdir dev
    mkdir dev/cpuctl
