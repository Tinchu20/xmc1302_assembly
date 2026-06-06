target remote localhost:2331

b SystemInit

b main

b gpio_init

source /home/tinchu/opt/PyCortexMDebug/scripts/gdb.py

svd_load XMC1300.svd

monitor reset

load

layout reg src

continue
