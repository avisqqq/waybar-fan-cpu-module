# Waybar CPU & Fan Monitor (Hyprland / Arch Linux)

A small Bash script for displaying real-time CPU usage, CPU frequency, and CPU/GPU fan RPM in Waybar.  
Useful for laptops with dual fans.
## Features
- Reads current CPU frequency via `cpupower`
- Reads CPU & GPU fan speeds from `lm_sensors`
- Provides JSON output compatible with Waybar custom modules
- Lightweight and simple (pure Bash, no dependencies except sensors + cpupower)
## Installation
### 1. Install dependencies
```bash
sudo pacman -S lm_sensors cpupower
sudo sensors-detect
#2. Install the script
sudo cp scripts/cpu_info.sh /usr/local/bin/cpu_info.sh
sudo chmod +x /usr/local/bin/cpu_info.sh
#3. Add waybar/config to Waybar (~/.config/waybar/config)
```
![Waybar](waybar.png)
