# Script Breakdown: setup_workspace.sh

## 1. Header & Safety Settings
* `#!/usr/bin/env bash`: Tells the operating system to execute this file using the Bash interpreter.
* `set -euo pipefail`: Configures strict error handling—causes the script to exit immediately if any command fails or if an undeclared variable is referenced.

## 2. Dynamic Variables
* `LOG_DIR="artifacts/logs"`: Sets the relative path where log files will be saved.
* `TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")`: Executes the system `date` command and stores a formatted timestamp (Year-Month-Day_Hour-Minute-Second).
* `LOG_FILE="${LOG_DIR}/system_audit_${TIMESTAMP}.log"`: Combines the directory path and timestamp into a unique filename string.

## 3. Directory Existence Check (Conditional)
* `if [ ! -d "${LOG_DIR}" ]; then ... fi`: Checks if the directory stored in `LOG_DIR` does NOT exist. If true, it runs `mkdir -p` to create the path before proceeding.

## 4. Execution Loop & Stream Redirection (Automation)
* `for cmd in "uptime" "free -m" "df -h"; do ... done`: Cycles sequentially through three monitoring commands.
* `echo ... > "${LOG_FILE}"`: Overwrites/creates the file with an initial header line (Standard Output redirection).
* `${cmd} >> "${LOG_FILE}" 2>&1`: Runs each command in the loop, appending standard output (`>>`) and redirecting standard error (`2>&1`) into the log file.

## 5. Output Confirmation
* `echo "Log saved to: ${LOG_FILE}"`: Prints a confirmation message to the terminal screen upon successful completion.
