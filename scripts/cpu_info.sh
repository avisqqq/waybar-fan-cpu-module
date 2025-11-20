#!/bin/bash


# Average CPU frequency in GHz
freq=$(cpupower frequency-info | grep -i "current CPU frequency" | awk '{print$4}')

# Fan RPMs
fan1=$(sensors | grep -i "cpu_fan" | awk '{print $2}')
fan2=$(sensors | grep -i "gpu_fan" | awk '{print $2}')

echo "{ \"text\": \"${freq}GHz  ${fan1}/${fan2}RPM\" }"
