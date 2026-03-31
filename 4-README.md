# oss audit – Python Programming Language
---

## Student Details

| Field               | Details                        |
|---------------------|--------------------------------|
| *Name*            | Ashi Gupta  |
| *Registration No.* | 24BAI10954   |
| *Course Name*     | Open Source Software  |
| *Repository*      | oss-audit-24BAI10954   |

---

##  Chosen Software: Python

Guido van Rossum first published *Python*, a high-level, general-purpose, interpreted programming language, in 1991. Licensed under the permissive, OSI-approved *Python Software Foundation (PSF) License*, it is one of the most popular open-source programming languages worldwide.

The importance of Python in the open-source community is derived from -

*Readability* - Its simple, English-like syntax makes it easier for both novices and experts to get started.
*Versatility* - Web development, data science, machine learning, automation, cybersecurity, and other fields use it.
*Community* - With more than 400,000 packages available on PyPI, it is supported by one of the biggest open-source communities.
*Cross-platform* - It is natively compatible with Windows, macOS, and Linux.
*Industry adoption*  - trusted by companies like CERN, Google, NASA, and Netflix.

Python is a prime example of the open-source concept: it is freely accessible, jointly maintained, and constantly enhanced by global contributors.

---

## Repository Structure


oss-audit-[rollnumber]/
│
├── scripts/
│   ├── script1.sh          # System Identity Report
│   ├── script2.sh          # FOSS Package Inspector (Python)
│   ├── script3.sh          # Disk and Permission Auditor
│   ├── script4.sh          # Log File Analyzer
│   └── script5.sh          # Open Source Manifesto Generator
│
├── report/
│   └── oss_audit_report_24BAI10954.pdf   # Project report (PDF)
│
├── output/
│   └── manifesto.txt          # Generated output from script5.sh
│
└── README.md


---

## Prerequisites

Before running any scripts, ensure the following are available on your system:

- *Operating System:* A Linux-based OS (Ubuntu 20.04+ recommended)
- *Shell:* Bash (/bin/bash)
- *Python:* Python 3.x installed and accessible via python3
- *Utilities:* Standard GNU/Linux tools — uname, df, ls, grep, awk, stat

To verify your environment:

bash
bash --version
python3 --version
uname -a


---
## Installation & Setup

### 1. Clone the Repository

bash
git clone https://github.com/Ashigupta782/oss-audit-24BAI10954.git


### 2. Navigate to the Project Directory

bash
cd oss-audit-24BAI10954


### 3. Grant Execution Permissions to All Scripts

bash
chmod +x scripts/*.sh


Or grant permissions individually:

bash
chmod +x scripts/script1.sh
chmod +x scripts/script2.sh
chmod +x scripts/script3.sh
chmod +x scripts/script4.sh
chmod +x scripts/script5.sh


---

## Script Descriptions

---

### script1.sh — System Identity Report

*Description:*
Creates a thorough snapshot of the Linux system that is being used. Key system data, such as the hostname, OS version, kernel details, current user, system uptime, CPU architecture, and available memory, are gathered and shown. This script establishes the environment in which Python, an open-source program, functions as an orientation tool.

*Key Concepts Used:*
- Environment variables ($USER, $HOSTNAME)
- Command substitution ($(...))
- Built-in commands: uname, uptime, free, lscpu
- Formatted output using echo

*Run Command:*
bash
./scripts/script1.sh


---

### script2.sh — FOSS Package Inspector (Python)

*Description:*
Examines the host system's Python installation from the standpoint of open-source software. The installed version of Python, its binary path, and the standard library's location are all identified. Additionally, it uses pip3 to list the third-party packages that are currently installed and verifies if Python is listed as a recognized package by the system's package manager (dpkg or rpm). As a FOSS artifact, Python is directly audited by this script.

*Key Concepts Used:*
- Command substitution and piping (|)
- Conditional checks with if/else
- Package manager queries (dpkg -l, pip3 list)
- String formatting and tabular output

*Run Command:*
bash
./scripts/script2.sh


---

### script3.sh — Disk and Permission Auditor

*Description:*
Carries out a dual audit of the project directory's file permissions and disk usage. After reporting the filesystem's total, used, and available disk space, it recursively examines every file in the scripts/folder and uses stat and ls -l to display each file's size, ownership, and permission bits. It highlights the significance of appropriate file permission management in Linux by flagging any script that does not have execute permission.

*Key Concepts Used:*
- df for disk usage reporting
- stat and ls -l for permission inspection
- for loops to iterate over files
- Conditional logic to flag permission issues
- String comparison in Bash

*Run Command:*
bash
./scripts/script3.sh


---

### script4.sh — Log File Analyzer

*Description:*
Mimics a small-scale log analysis tool. The script looks for entries that contain keywords like error, warning, failed, and Python by reading from /var/log/syslog (or a generated mock log if system logs are unavailable). Each keyword's occurrences are counted, matching lines are shown, and results are summarized. This is similar to real-world DevOps tasks where system logs are used to monitor Python-based tools.

*Key Concepts Used:*
- File reading and text processing with grep, awk, wc
- Keyword-based pattern matching
- Arrays in Bash
- while read loop for line-by-line file processing
- Conditional existence check for log files (-f flag)

*Run Command:*
bash
./scripts/script4.sh


---

### script5.sh — Open Source Manifesto Generator

*Description:*
Uses Python as a case study to create a formatted plain-text document called a "Open Source Manifesto" that explains the fundamentals of open-source software. The project title, student information, Python license details, OSS principles (freedom to run, study, redistribute, and improve), and a closing statement are all dynamically written by the script to output/manifesto.txt. It shows how to create, write, and redirect output in Bash.

*Key Concepts Used:*
- Output redirection (>, >>)
- Multi-line text generation using cat <<EOF
- Date and time stamping with date
- File I/O — creating and writing to files
- Variables for dynamic content injection

*Run Command:*
bash
./scripts/script5.sh


The generated manifesto will be saved to:

output/manifesto.txt


---

## Key Concepts Demonstrated

This project collectively demonstrates the following Linux and Bash scripting concepts:

| Concept                  | Scripts Involved          |
|--------------------------|---------------------------|
| Variables & substitution | script1, script2, script5 |
| Conditionals (if/else) | script2, script3, script4 |
| Loops (for, while)   | script3, script4          |
| File handling & I/O      | script4, script5          |
| Piping & redirection     | script2, script4, script5 |
| System commands          | script1, script2, script3 |
| Text processing (grep, awk) | script4            |
| Permission management    | script3                   |
| Package inspection       | script2                   |
| Output formatting        | All scripts               |

---

## Learning Outcomes

Upon completing this project, the following skills were developed and reinforced:
*Linux proficiency* — Using essential system tools, controlling permissions, and navigating the filesystem.
*Bash scripting*  - Creating functional, readable, and modular shell scripts from the ground up.
*Software auditing* - Knowing what constitutes "open source" software, including community governance, distribution rights, and licensing.
*Documentation skills* - Clearly organizing technical documentation for both professional and academic audiences.
*Version control* - Using GitHub and Git to manage and publish a project.

---

##  Notes

- All scripts are written for *Bash* and have been tested on *Ubuntu 22.04 LTS*. Compatibility with other distributions (Fedora, Arch, etc.) is expected but not guaranteed for package-manager-specific commands.
- script4.sh requires read access to /var/log/syslog. If unavailable (e.g., on systems using journald), the script will fall back to a mock log file for demonstration purposes.
- script2.sh assumes pip3 is installed alongside Python 3. If not present, install it with:
  bash
  sudo apt install python3-pip
  
- The output/ directory will be created automatically by script5.sh if it does not already exist.

---

## Submission Components

This project was submitted with the following components:

- GitHub Repository — oss-audit-24BAI10954
- README.md — This file
- Project Report — oss_audit_report_24BAI10954.pdf

---

## Author

*Ashi Gupta* ,
Registration No.: 24BAI10954 ,
Course: Open source software

GitHub: @Ashigupta782(https://github.com/Ashigupta782)

---

This project was submitted as part of a university capstone assignment on Open Source Software analysis.

