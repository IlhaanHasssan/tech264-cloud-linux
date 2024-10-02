# ***LINUX***
- [Linux](#linux)- [Linux](#linux)
  - [Linux Commands:](#linux-commands)
    - [File and Directory commands:](#file-and-directory-commands)
    - [Viewing and Editing Files](#viewing-and-editing-files)
    - [Permissions and Ownership](#permissions-and-ownership)
    - [System Information](#system-information)
    - [Networking](#networking)
    - [Package Management (for Ubuntu/Debian systems)](#package-management-for-ubuntudebian-systems)
    - [Miscellaneous](#miscellaneous)
# What is Linux?
  - Linux is an open-source, Unix-like operating system (OS) that manages hardware and software resources on a computer. It is widely used for its stability, security, and flexibility, especially in servers, desktops, and embedded systems. Linux is known for being customizable and is distributed through various versions called "distributions" or "distros" (e.g., Ubuntu, Fedora, CentOS).

Key features:
- Open-source and free
- Multi-user and multi-tasking
- Strong security and stability

## Linux Commands👩🏾‍💻:

### File and Directory🗃️:
- **`ls`** – Lists files and directories in the current directory.
- Example: **`ls -l`** (shows detailed info like file ownership, permissions, size, etc.) This is valuable information as managing file ownership protects sensitive data from unauthorised access. 

- **`cd`** – Changes directory.
- Example: **`cd`** /home/user/Documents (moves to the Documents directory)
  
- **`pwd`** – Prints the current working directory (shows where you are in the directory tree).

- **`mkdir`** – Creates a new directory.
- Example: **`mkdir myFolder`**
  
- **`rmdir`** – Removes an empty directory.

- Example:**` rmdir`** myFolder
- **`touch`** – Creates an empty file.

- Example: **`touch file.txt`**
- **`cp`** – Copies files or directories.

- Example: **`cp file1.txt file2.txt`**
   
    (copies file1.txt to file2.txt)
- **`mv`** – Moves or renames files and directories.

- Example: **`mv oldname.txt newname.txt`** (renames the file)
- **`rm`** – Removes/deletes files or directories.
- Example:**` rm file.txt `**(removes file.txt)
- Example: **`rm -r directory`** (removes directory and its contents)
  
### Viewing and Editing Files📝:
- **`cat`** – Displays the contents of a file.
  - Example: `cat file.txt` or `cat /etc/shells`

- **`nano`** – Opens a file in the **nano** text editor (useful for quick edits).
  - Example: `nano file.txt`
- **`nl`** - adds number lines in file.
  - Example: `nl chicken-joke.txt` adds numberline to our chicken joke.

- **`vi`** or **`vim`** – Opens the **vi** or **vim** text editor.
  - Example: `vim file.txt`

- **`head`** – Displays the first 10 lines of a file. This can be customised to display other amounts of lines eg: 2 lines using `head 2`
  - Example: `head file.txt`

- **`tail`** – Displays the last 10 lines of a file.
  - Example: `tail file.txt`
- **`file`** - type checks a file
  - Example: `file cat.jpg` will show that file is a `.jpg` file.

### Permissions and Ownership🔐:
- **`chmod`** – Changes file permissions.
  - Example: `-rwxr-xr-- 1 tcboony staff  123 Nov 25 18:36 keeprunning.sh` 
  - (sets read, write, execute for the owner, and read, execute for group and others)
    - Owner: rwx (read, write, execute)
    - Group: r-x (read, execute)
    - Others: r-- (read)
    - Owner of a file does not immediately receive `x` or execute permissions initially to reduce the risk of running potentially harmful scripts or binaries on accident.
 1. **What numeric values are assigned to each permission?**
   - Read = 4, Write = 2, Execute = 1

2. **What can you with the values assign read + write permissions?**
   - Add Read (4) + Write (2) = 6

3. **What value would assign read, write and execute permissions?**
   - Add Read (4) + Write (2) + Execute (1) = 7

4. **What value would assign read and execute permissions?**
   - Add Read (4) + Execute (1) = 5

5. **What do you think 644 would mean?**
   - Owner: Read + Write (6), Group: Read (4), Others: Read (4)


- **`chown`** – Changes file owner and group.
  - Example: `chown user:group file.txt`
   -  **To change permissions on a file what must the end user be?**
   - The file owner or a superuser (root).
   -  **Set User to read, Group to read + write + execute, and Other to read and write only:**
```bash
   chmod u=r, g=rwx, o=rw testfile.txt
```
   - **Add execute permissions (to all entities):**
```bash
  chmod +x testfile.txt
```
  - **Take write permissions away from Group:**
```bash
chmod g-w testfile.txt
```
  - **Use numeric values to give read + write access to User, read access to Group, and no access to Other:**
  ```bash
  chmod 640 testfile.txt
```

- **`whoami`** – prints admin username.
  - Example: `whoami` output = `useradmin`

### System Information🖇️:
- **`uname -a`** – Displays system information (kernel version, system architecture, etc.).

- **`df`** – Shows disk space usage.
  - Example: `df -h` (shows human-readable output)

- **`du`** – Shows directory and file space usage.
  - Example: `du -h /home/user` (shows size of files in home directory)

- **`top`** – Displays running processes and system resource usage.

- **`ps`** – Shows currently running processes.
  - Example: `ps aux` (shows all processes) or `ps -p $$` - finds out what process you are running
- **`piping`** – uses `|` character to direct the output of one command to the input of another. 
  - Example: `ps aux | grep "apache" | sort -k 3 -r > apache_processes.txt`
- **`cat /etc/shells`** – prints what shells are running on your system.
- **`sudo`** - this gives user access to "superuser" permissions. 

### Networking🛜:
- **`ifconfig`** or **`ip a`** – Displays network interface information.

- **`ping`** – Sends ICMP echo requests to test connectivity.
  - Example: `ping google.com`

- **`ssh`** – Connects to a remote machine over SSH.
  - Example: `ssh user@hostname`

- **`scp`** – Securely copies files between hosts.
  - Example: `scp file.txt user@remote:/path/to/destination`
- **`history`** –Shows entire bash command history for your VM 

### Package Management (for Ubuntu/Debian systems)📦:
- **`apt update`** – Updates package lists from repositories.

- **`apt upgrade`** – Installs available package updates.

- **`apt install`** – Installs new software packages.
  - Example: `apt install git`

- **`apt remove`** – Uninstalls a package.
  - Example: `apt remove package_name`

### Others🚧:
- **`echo`** – Prints text to the terminal.
  - Example: `echo "Hello, world!"`

- **`man`** – Displays the manual for a command.
  - Example: `man ls` (shows manual page for the `ls` command)

- **`exit`** – Logs out of a terminal session or closes the shell.

- **`clear`** – Clears the terminal screen.
- **`curl`** - used to transfer data to/from a server using various protocols (HHTP, HTTPS, FTP etc)
  - Example: `curl https://cdn.britannica.com/39/7139-050-A88818BB/Himalayan-chocolate-point.jpg -O cat.jpg`
- **`wget`** - used to download files from the internet, also using various protocols.
  - Example: `wget https://cdn.britannica.com/39/7139-050-A88818BB/Himalayan-chocolate-point.jpg -O cat2.jpg`




