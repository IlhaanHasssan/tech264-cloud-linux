# Linux
- [Linux](#linux)- [Linux](#linux)
  - [Linux Commands:](#linux-commands)
    - [File and Directory commands:](#file-and-directory-commands)
    - [Viewing and Editing Files](#viewing-and-editing-files)
    - [Permissions and Ownership](#permissions-and-ownership)
    - [System Information](#system-information)
    - [Networking](#networking)
    - [Package Management (for Ubuntu/Debian systems)](#package-management-for-ubuntudebian-systems)
    - [Miscellaneous](#miscellaneous)


## Linux Commands:

### File and Directory commands:
- ```ls``` – Lists files and directories in the current directory.
- Example: ```ls -l``` (shows detailed info like permissions, size, etc.)

- ```cd``` – Changes directory.
- Example: ```cd``` /home/user/Documents (moves to the Documents directory)
  
- ```pwd``` – Prints the current working directory (shows where you are in the directory tree).

- ```mkdir``` – Creates a new directory.
- Example: ```mkdir myFolder```
  
- ```rmdir``` – Removes an empty directory.

- Example:``` rmdir``` myFolder
- ```touch``` – Creates an empty file.

- Example: ```touch file.txt```
- ```cp``` – Copies files or directories.

- Example: ```cp file1.txt file2.txt```
   
    (copies file1.txt to file2.txt)
- ```mv``` – Moves or renames files and directories.

- Example: ```mv oldname.txt newname.txt``` (renames the file)
- ```rm``` – Removes/deletes files or directories.
- Example:``` rm file.txt ```(removes file.txt)
- Example: ```rm -r directory``` (removes directory and its contents)
  
### Viewing and Editing Files
- **`cat`** – Displays the contents of a file.
  - Example: `cat file.txt`

- **`nano`** – Opens a file in the **nano** text editor (useful for quick edits).
  - Example: `nano file.txt`

- **`vi`** or **`vim`** – Opens the **vi** or **vim** text editor.
  - Example: `vim file.txt`

- **`head`** – Displays the first 10 lines of a file.
  - Example: `head file.txt`

- **`tail`** – Displays the last 10 lines of a file.
  - Example: `tail file.txt`

### Permissions and Ownership
- **`chmod`** – Changes file permissions.
  - Example: `chmod 755 file.sh` (sets read, write, execute for the owner, and read, execute for group and others)

- **`chown`** – Changes file owner and group.
  - Example: `chown user:group file.txt`

### System Information
- **`uname -a`** – Displays system information (kernel version, system architecture, etc.).

- **`df`** – Shows disk space usage.
  - Example: `df -h` (shows human-readable output)

- **`du`** – Shows directory and file space usage.
  - Example: `du -h /home/user` (shows size of files in home directory)

- **`top`** – Displays running processes and system resource usage.

- **`ps`** – Shows currently running processes.
  - Example: `ps aux` (shows all processes)

### Networking
- **`ifconfig`** or **`ip a`** – Displays network interface information.

- **`ping`** – Sends ICMP echo requests to test connectivity.
  - Example: `ping google.com`

- **`ssh`** – Connects to a remote machine over SSH.
  - Example: `ssh user@hostname`

- **`scp`** – Securely copies files between hosts.
  - Example: `scp file.txt user@remote:/path/to/destination`

### Package Management (for Ubuntu/Debian systems)
- **`apt update`** – Updates package lists from repositories.

- **`apt upgrade`** – Installs available package updates.

- **`apt install`** – Installs new software packages.
  - Example: `apt install git`

- **`apt remove`** – Uninstalls a package.
  - Example: `apt remove package_name`

### Miscellaneous
- **`echo`** – Prints text to the terminal.
  - Example: `echo "Hello, world!"`

- **`man`** – Displays the manual for a command.
  - Example: `man ls` (shows manual page for the `ls` command)

- **`exit`** – Logs out of a terminal session or closes the shell.

- **`clear`** – Clears the terminal screen.

