# Understanding context for dataset: linux kernel


- **CPU**: `/proc/stat`
  - Provides CPU usage statistics.
  - Command: `cat /proc/stat`

- **CPU Info**: `/proc/cpuinfo`
  - Details about the processor (model, cores, speed).
  - Command: `cat /proc/cpuinfo`

- **RAM**: `/proc/meminfo`
  - Memory usage details.
  - Command: `cat /proc/meminfo`

- **RAM Usage in Real Time**:  
  - Command: `free -h`

- **Processes (PIDs)**: `/proc/[PID]/`
  - Each running process has a directory under `/proc/` with its PID.
  - Example: `ls /proc/1234/`

- **Process Details**: `/proc/[PID]/status`
  - Provides memory and execution state of the process.
  - Command: `cat /proc/1234/status`

- **Process CPU Usage**: `/proc/[PID]/stat`
  - Shows CPU time consumed by a process.
  - Command: `cat /proc/1234/stat`

- **Process Command Line**: `/proc/[PID]/cmdline`
  - Displays the command used to start the process.
  - Command: `cat /proc/1234/cmdline`

- **Opened Files by a Process**: `/proc/[PID]/fd/`
  - Lists file descriptors used by a process.
  - Command: `ls -l /proc/1234/fd/`

- **GPU (NVIDIA)**:  
  - Command: `nvidia-smi`

- **GPU (AMD/Intel)**: `/sys/class/drm/`
  - Command: `ls /sys/class/drm/`
  - For AMD ROCm: `rocm-smi`

- **Storage Devices**: `/sys/block/`
  - Lists detected storage devices.
  - Command: `ls /sys/block/`

- **Disk Usage**:  
  - Command: `df -h`

- **Disk Read/Write Activity**: `/proc/diskstats`
  - Command: `cat /proc/diskstats`

- **Network Interfaces**: `/proc/net/dev`
  - Shows network traffic statistics.
  - Command: `cat /proc/net/dev`

- **Network Configuration**:  
  - Command: `ip a`

- **Open Ports & Active Connections**:  
  - Command: `netstat -tulnp` or `ss -tulnp`
