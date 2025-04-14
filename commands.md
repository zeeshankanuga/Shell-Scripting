# 🖥️ Linux System Monitoring & Shell Scripting Basics

This repository is a continuation of foundational Linux command-line tools and scripting concepts. It focuses on system resource monitoring, network utilities, and basic shell scripting structures like conditionals and loops.


## 📊 System Monitoring Commands

- ### df
```
df -h
```
Shows disk space usage.
-h flag displays sizes in a human-readable format (MB/GB).

- ### free
```
free -h
```
Displays memory usage (RAM and swap).
-h shows values in MB/GB.

- ### nproc
```
nproc
```
Outputs the number of processing units available (CPU cores).

- ### top
```
top
```
Displays real-time processes and system resource usage (CPU, memory).

Press q to quit.

## 🧪 Debugging in Shell Scripts

- ``set -x`` #debug mode
- ``set -e`` #exit the script when there is an error
- ``set -o`` #pipe fails

## 🧍 Process Management
```
ps -ef | grep amazon | awk -F" " '{print $2}'
```
Lists all running processes.
Filters processes related to "amazon".
Extracts and prints the PID (Process ID) using awk.

## 🌐 Downloading Files from the Internet

```curl https://example.com```

Transfers data from or to a server using URL syntax.
Use with -O to download a file: curl -O https://example.com/file.zip

```wget https://example.com/file.zip```

Non-interactive network downloader.
Works well for downloading large files or automating downloads.

## 🔍 Finding Files and Folders
```
sudo find / -name "filename"
```
Recursively searches from the root directory for a file or folder by name.
Requires sudo to access all directories.

## 🧠 Shell Scripting: Conditionals
```
if [ -f myfile.txt ]; then
    echo "File exists."
else
    echo "File not found."
fi
```
## 🔁 Shell Scripting: Loops
```
for i in 1 2 3; do
    echo "Number: $i"
done
```
