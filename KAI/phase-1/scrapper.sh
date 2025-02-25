#!/bin/bash

# Directorio donde se guardarán los logs
LOG_DIR="$HOME/Escritorio/project-KAILA/KAI/phase-1/system_logs"
mkdir -p "$LOG_DIR"

# Archivo de log con marca de tiempo
LOG_FILE="$LOG_DIR/system_log_$(date +'%Y-%m-%d_%H-%M-%S').log"

echo "================ System Monitoring Report ================" > "$LOG_FILE"
echo "Timestamp: $(date)" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# CPU Information
echo "----- CPU Information -----" >> "$LOG_FILE"
cat /proc/cpuinfo >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# CPU Usage
echo "----- CPU Usage -----" >> "$LOG_FILE"
cat /proc/stat >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# RAM Usage
echo "----- RAM Usage -----" >> "$LOG_FILE"
cat /proc/meminfo >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Process List
echo "----- Process List -----" >> "$LOG_FILE"
ps aux --sort=-%cpu | head -n 20 >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Open Files by Processes
echo "----- Open Files by Top Processes -----" >> "$LOG_FILE"
for pid in $(ps -eo pid --sort=-%cpu | head -n 11 | tail -n +2); do
    echo "PID: $pid" >> "$LOG_FILE"
    ls -l /proc/$pid/fd/ >> "$LOG_FILE" 2>/dev/null
    echo "" >> "$LOG_FILE"
done

# GPU Information (if available)
echo "----- GPU Information -----" >> "$LOG_FILE"
if command -v nvidia-smi &> /dev/null; then
    nvidia-smi >> "$LOG_FILE"
elif [ -d "/sys/class/drm/" ]; then
    ls /sys/class/drm/ >> "$LOG_FILE"
else
    echo "No GPU detected" >> "$LOG_FILE"
fi
echo "" >> "$LOG_FILE"

# Disk Usage
echo "----- Disk Usage -----" >> "$LOG_FILE"
df -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Disk Activity
echo "----- Disk Read/Write Activity -----" >> "$LOG_FILE"
cat /proc/diskstats >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Network Usage
echo "----- Network Usage -----" >> "$LOG_FILE"
cat /proc/net/dev >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Open Ports & Active Connections
echo "----- Open Ports & Active Connections -----" >> "$LOG_FILE"
ss -tulnp >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "System monitoring data saved to $LOG_FILE"
