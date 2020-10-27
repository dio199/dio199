#!/bin/bash
#Script for the easy installation of AMD Drivers on HiveOS/Ubuntu based OS
#Script By CryptoLuigi (Michael Ruperto)
#Date: 2019-04-21
#Contributors: miabo Cryptonuffe

systemctl stop hivex
miner stop

echo
#mkdir /hive-drivers-pack/
cd /hive-drivers-pack/
echo "Please note Drivers with the 18.04 suffix require an OS upgrade, or On Hiveos u can download the latest beta from https://anonfiles.com/d2tch3k3p0/amdgpu-pro-20.30-1109583-ubuntu-18.04.tar_xz and install on a fresh usb."
PS3='Please enter your choice Drivers: '

options=("20.30-1109583-ubuntu-18.04" "Quit")

select opt in "${options[@]}"
do
case $opt in
	"20.30-1109583-ubuntu-18.04")
	wget https://cdn-123.anonfiles.com/d2tch3k3p0/2b95c569-1603804716/amdgpu-pro-20.30-1109583-ubuntu-18.04.tar.xz
        version="20.30-1109583-ubuntu-18.04";break
	;;
	"Quit")
	exit
        break
    ;;
    *)
        echo "Invalid option $REPLY"
    ;;
    esac
done

echo
read -p "Do you want have RX4xx/RX5xx?(y/n)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
    tar -Jxvf amdgpu-pro-$version.tar.xz
    echo
    read -p "Do you want remove current AMD Drivers?(y/n)" -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
		/usr/bin/amdgpu-pro-uninstall
		apt-get remove vulkan-amdgpu-pro*
	fi
	cd amdgpu-pro-$version
    apt-get -f install
    ./amdgpu-pro-install --opencl=legacy -y
    dpkg -l amdgpu-pro
    exit
fi

tar -Jxvf amdgpu-pro-$version.tar.xz
cd amdgpu-pro-$version
./amdgpu-pro-install -y
dpkg -l amdgpu-pro
