# Linux Basics and Shell Scripting Reference

This repository contains basic Linux command references and scripting fundamentals using different shell interpreters. It is intended for beginners to get a hands-on introduction to the Linux environment and shell scripting.

## 📌 Shebang Lines in Shell Scripts

The `shebang (#!)` line tells the system which interpreter to use to execute the script.
```
bash
#!bin/bash   # Uses the Bash shell
#!bin/dash   # Uses the Dash shell (Debian Almquist shell - lightweight POSIX-compliant shell)
#!bin/sh     # Uses the default system shell (often linked to Bash or Dash)
#!bin/ksh    # Uses the Korn shell (advanced scripting capabilities)
```
✅ Note: The path should actually be /bin/bash, /bin/dash, etc., not #!bin/....

## 📄 Creating Files
```
touch filename     # Creates an empty file
vim filename       # Opens file in Vim editor for editing
```
## 📥 Viewing File Content
```
cat filename       # Displays the content of a file
```
## 📁 Listing Files
```
ls                # Lists files in the current directory
ls -ltr           # Lists files with detailed info, sorted by modification time (latest last)
```
## 📚 Viewing Manual Pages
```
man command       # Opens the manual page for the specified command
```
### Example:
```
man ls            # Shows the manual for the 'ls' command
```
## 📢 Printing Text to Terminal
```
echo "Hello, World!"   # Prints text to the terminal
```
## 🔐 File Permissions (chmod)
```
chmod 777 filename   # Gives full permissions (read/write/execute) to user, group, and others
```
### Breakdown:
Permissions Value:
```
Read (r) = 4
Write (w) = 2
Execute (x) = 1
```
Permission Format:
```
First digit = User (owner)
Second digit = Group
Third digit = Others
```
### Example:
```
chmod 754 filename
# User: 7 (rwx)
# Group: 5 (r-x)
# Others: 4 (r--)
```
## 📍 Display Current Directory
```
pwd      # Prints the current working directory
```
## 📁 Create a New Directory
```
mkdir new_directory_name
```
## 📂 Change Directory
```
cd /path/to/directory      # Navigates to the specified directory
cd ..                      # Goes one level up
cd                         # Goes to the home directory
```
