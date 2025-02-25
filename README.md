# KAI: An AI powered Linux Kernel

This project has the main purpose of developing a linux distribution from the open-source kernel `linux-source`
in which i am going to introduce a new module that hosts a SLM purposely trained to help the user optimyze
the system, creating a new comand called `aikm` with a list of parameters for a better interaction between the
module and the user.

the final objective is simple: having a new distribution that can use the module to effectively know every single
problem and troubleshoots it in the moment. To ensure the intregrity of the system, the model will only have reading 
rights, although and the administrator can give it some temporal writing rights if necessary  

## 1. Preparing enviroment

Before starting, install the necessary tools to compile the kernel and develop modules:  
```bash
sudo apt install -y build-essential libncurses-dev bison flex libssl-dev libelf-dev
```
Additionally, install useful packages for file system manipulation and cross-compilation:  
```bash
sudo apt install -y bc cpio kmod
```
We have to ensure we are in the correct directory, in my case: `~/Escritorio/TFM/`

## 2. Download and Configure the Kernel

Get the latest kernel source code: 
```bash
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.tar.xz
tar -xf linux-6.6.tar.xz
cd linux-6.6/
```
Configure the kernel:  
```bash
make menuconfig
```
- Enable module compilation.
- Activate `/proc` for communication with the module.  

Compile the kernel and modules
```bash
make -j$(nproc) && sudo make modules_install && sudo make install
```
Restart the system with the new Kernel
```bash
sudo reboot
```
## 3. Kernel Module Development

Create a simple module that interacts with /proc and allows process inspection.  
This module is located at [aikm_module.c](/kernel/phase-3/aikm_module.c)

Then we need to compile the new module creating a [Makefile](/kernel/phase-3/Makefile.c)

copile it:
```bash
cd /project-directory/kernel/phase-3/ && make
```
Load the module:
```bash
sudo insmod aikm_module.ko
```
Verify its functionality:-
```bash
cat /proc/aikm_info
```
After testing it, remove it
```bash
sudo rmmod aikm_module
```
