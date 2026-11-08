#!/usr/bin/env bash
# Workspace Setup and Logging Automation Script

set -euo pipefail

LOG_DIR="artifacts/logs"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="${LOG_DIR}/system_audit_${TIMESTAMP}.log"

# Check if log directory exists; create it if missing
if [ ! -d "${LOG_DIR}" ]; then
    echo "Creating log directory at ${LOG_DIR}..."
    mkdir -p "${LOG_DIR}"
fi

echo "=== System Audit Started at ${TIMESTAMP} ===" > "${LOG_FILE}"

# Loop through system monitoring commands and log outputs
for cmd in "uptime" "free -m" "df -h"; do
    echo -e "\n--- Running Command: ${cmd} ---" >> "${LOG_FILE}"
    ${cmd} >> "${LOG_FILE}" 2>&1
done

echo -e "\n=== Audit Completed Successfully ===" >> "${LOG_FILE}"
echo "Log saved to: ${LOG_FILE}"
