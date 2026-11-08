# Linux & CLI Mastery Project - Comprehensive Evidence & Documentation

## 1. File System Navigation
- Commands: pwd, ls -la, cd
- Execution Output:
  fisayo_adedoyin@LAPTOP-930SKSGM:~/linux-command-line-mastery$ pwd
  /home/fisayo_adedoyin/linux-command-line-mastery
- Explanation: pwd outputs the absolute path of the current working directory. ls -la lists all contents, including hidden dotfiles, alongside permissions, owner details, and file sizes. This is foundational in DevOps workflows to ensure configurations and scripts are deployed in the correct paths.

## 2. File and Directory Management
- Commands: mkdir, touch, mv, rm
- Execution Output:
  mkdir myfolder newfolder
  touch project_status.txt
- Explanation: mkdir creates new subdirectories, while touch initializes empty files or updates access timestamps. These commands are used to structure project workspaces and isolate logs or artifacts.

## 3. Permissions and Ownership
- Commands: chmod +x, chmod 755
- Execution Output:
  chmod +x scripts/setup_workspace.sh
- Explanation: chmod +x modifies file attributes to grant execution rights to shell scripts. 755 grants Read/Write/Execute to the owner, and Read/Execute to group and others, ensuring scripts are runnable while safeguarding production environments from unauthorized modifications.

## 4. Package Installation & Tools
- Commands: sudo apt update, sudo apt install -y curl
- Execution Output:
  Reading package lists... Done
  curl is already the newest version.
- Explanation: apt manages software packages on Debian/Ubuntu systems. Updating package lists ensures dependency security and fetches the latest patches before installing system tools.

## 5. Redirection and Data Filtering
- Commands: >, >>, |, grep
- Execution Output:
  echo "Task 5 completed" >> project_status.txt
  ls -la | grep "project"
- Explanation: > creates or overwrites files with output streams, while >> safely appends data. The pipe routes standard output from one command as standard input to another, allowing efficient filtering of text patterns using grep without intermediate files.

## 6. Process and System Monitoring
- Commands: df -h, free -m, ps aux
- Execution Output:
  df -h   # Reports filesystem disk space in human-readable GB/MB
  free -m # Reports system memory/RAM usage in MB
  ps aux  # Lists active system processes and PID details
- Explanation: Monitoring commands allow administrators to track CPU/RAM resource consumption, diagnose performance bottlenecks, and audit active processes before scaling infrastructure.

#PHASE 2 (Sudo)
## Visual Evidence
- Screenshots showing terminal execution and GitHub sync state are stored in the screenshots directory.

## 1. Package Management & Web Server Installation
* **Tool Used:** `apt` (Advanced Packaging Tool for Debian/Ubuntu systems)
* **Commands Executed:**
  - `sudo apt update`: Refreshed the local package index against remote repositories.
  - `sudo apt install -y nginx`: Installed the Nginx web server and required dependencies.
  - `nginx -v`: Verified successful installation and package version.

```text
fisayo_adedoyin@LAPTOP-930SKSGM:~/linux-command-line-mastery$ nginx -v
nginx version: nginx/1.24.0 (Ubuntu)
## 2. Administrative Privileges & Security (`sudo`)
* **Concept Learned:** Standard Linux user accounts cannot modify system-wide files or run package management commands without elevated permissions[cite: 3]. `sudo` ("Superuser Do") temporarily grants administrative privileges to run protected system commands[cite: 3].
* **Key Distinctions:**
  - `nano <file>`: Opens a file with standard user permissions. Read-only for system files like `/etc/hosts`.
  - `sudo nano <file>`: Runs the text editor with root privileges, allowing changes to system configuration files.
* **Troubleshooting & Security:**
  - Resolved `sudo` authentication failure by resetting the local user account password via WSL root access (`wsl -u root` and `passwd username`)[cite: 8, 9].
