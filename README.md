# Open Source Shell Scripts Project

## Student Information

- **Name:** Sanidhya Tiwari  
- **Roll Number:** 24MIP10163  
- **Course:** Open Source Software  
- **Chosen Software:** Git  

---

## About This Project

This project is a collection of five Bash shell scripts that I created to understand how Linux systems work and how open-source tools can be used practically.

Instead of just learning theory, I focused on doing real tasks like checking system information, analyzing directories, reading logs, and automating small processes.

For this project, I chose **Git**, because it is one of the most important tools used in real-world development. It helps developers track changes, manage code, and collaborate with others.

Git is open source and follows the GPL license, which means it promotes freedom, transparency, and sharing.

---

## What Each Script Does

### 🔹 Script 1 — System Identity Report (`script1.sh`)

This script shows basic information about the system like:
- Linux distribution  
- Kernel version  
- Current user  
- Uptime  
- Date and time  

It helped me understand how to fetch system-level details using commands.

---

### 🔹 Script 2 — FOSS Package Inspector (`script2.sh`)

This script checks whether Git is installed or not.

If Git is installed, it:
- Displays the version  
- Shows basic details  
- Prints a short description using a case statement  

This helped me understand how package checking works in Linux.

---

### 🔹 Script 3 — Disk and Permission Auditor (`script3.sh`)

This script checks important system directories like:
- `/etc`
- `/var/log`
- `/home`
- `/usr/bin`
- `/tmp`

For each directory, it shows:
- Permissions  
- Disk usage  

It also checks if the Git configuration file (`~/.gitconfig`) exists.

This gave me a clear idea of how permissions and storage work in Linux.

---

### 🔹 Script 4 — Log File Analyzer (`script4.sh`)

This script reads a log file and counts how many times a keyword appears (default is "error").

It also:
- Shows the total count  
- Displays the last 5 matching lines  

This script helped me understand how logs can be analyzed using loops and conditions.

---

### 🔹 Script 5 — Open Source Manifesto Generator (`script5.sh`)

This is a simple interactive script.

It asks 3 questions and creates a short paragraph based on the answers.  
The output is saved in a file called:

`mymenifesto.txt`

This was the most creative part of the project and helped me learn how to take input and write to files.

---

## Tools and Commands Used

This project uses basic Linux commands like:

- `bash`, `echo`, `grep`, `awk`, `cut`  
- `uname`, `whoami`, `uptime`, `date`  
- `du`, `ls`, `tail`, `cat`  

And of course:

- `git`

---

## How I Installed Git

```bash
sudo apt update
sudo apt install git
