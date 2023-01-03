---
title: "Defacing"
date: 2023-01-02T13:06:22-08:00
draft: false
---

Here are the commands you can use to change directory to `/var/www/html/`, make a backup of the `index.html` file, and modify the web page to update the `h3` tag:

1. To change directory to `/var/www/html/`, use the `cd` command:

`cd /var/www/html/`

To check the filesystem permissions of /var/www/html/index.html on a Linux system, you can use the ls command with the -l option, which displays detailed information about the file, including its permissions.

For example, to check the permissions of /var/www/html/index.html, you can use the following command:

`ls -l /var/www/html/index.html`

This will display output similar to the following:

-rw-r--r-- 1 root root 675 Jan 1 12:34 /var/www/html/index.html

The first column of the output shows the permissions for the file. In this example, the permissions are -rw-r--r--, which means that the owner of the file has read and write permissions (rw-), and others have read-only permissions (r--).

The second and third columns show the owner and group owner of the file, respectively. In this example, the owner is root and the group owner is also root.

The fourth column shows the size of the file in bytes. In this example, the size of /var/www/html/index.html is 675 bytes.

The fifth and sixth columns show the date and time when the file was last modified. In this example, the file was last modified on January 1st at 12:34.

The final column shows the name of the file.

To find out what account you are currently using on a Linux system, you can use the whoami command. This command prints the current user's username to the terminal.

`whoami`

You can also use the id command to display more information about the current user, including the user's user ID (UID) and group ID (GID). For example:

`id`

uid=1000(jane) gid=1000(jane) groups=1000(jane),4(adm),24(cdrom),27(sudo),46(plugdev)

The uid and gid fields show the user's UID and GID, respectively. The groups field lists the user's supplementary groups.



2. To make a backup of the `index.html` file, use the `cp` command to copy the file to a new location:


`cp index.html index.html.bak`

You will get a permissions error, because index.html is owned by root.  

We need a way to overcome this.  Fortunately, there's a tool that can grant users temporary root privileges.  It's called sudo- and it only works if the account we're logged in as is part of the sudoer group.

To check if you are a member of the sudo group on a Linux system, you can use the groups command. This command displays the groups that the current user is a member of.

For example, to check if you are a member of the sudo group, you can run the following command:
`groups`

This will display a list of the groups that you are a member of. If the sudo group is listed, then you are a member of the sudo group and have the ability to run commands with sudo.

You can also use the id command to check if you are a member of the sudo group. For example:

`id -Gn | grep sudo`

This will display the names of the groups that you are a member of, and the grep command will search the output for the string sudo. If the sudo group is listed, then you are a member of the sudo group.

if pi is a member of the sudo group, you can use the `sudo` command to run the command as root.

`sudo cp index.html index.html.bak`

This works because the user "pi" is part of the sudoer group

This creates a copy of `index.html` with the name `index.html.bak`.

3. To modify the web page, you can use a text editor such as `nano` or `vi`. For example, to open the `index.html` file in `nano`, you can use the following command:

`nano index.html`

Use the arrow keys to navigate to the `h3` tag, and update the text between the opening and closing tags to say "Elena was here!".

To save your changes and exit `nano`, press `Ctrl + X`, then press `Y` to confirm that you want to save the changes, and finally press `Enter`.

To learn how to build your own webpage, visit this page: 
https://learn.shayhowe.com/html-css/building-your-first-web-page/

