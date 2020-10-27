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
echo "Please note Drivers with the 18.04 suffix require an OS upgrade, or On Hiveos u can download the latest beta from http://download.hiveos.farm/ and install on a fresh usb."
PS3='Please enter your choice Drivers: '

options=("16.40-348864-ubuntu-16.04" "16.60-379184-ubuntu-16.04" "17.10-429170-ubuntu-16.04" "17.10-450821-ubuntu-16.04" "17.30-458935-ubuntu-16.04" "17.30-465504-ubuntu-16.04" "17.40-492261-ubuntu-16.04" "17.40-483984-ubuntu-16.04" "17.50-511655-ubuntu-16.04" "18.10-572953-ubuntu-16.04" "18.20-606296-ubuntu-18.04" "18.30-641594-ubuntu-18.04" "18.30-641594-ubuntu-16.04" "18.40-673869-ubuntu-16.04" "18.40-697810-ubuntu-18.04" "18.50-725072-ubuntu-18.04" "19.10-785425-ubuntu-18.04" "19.20-812932-ubuntu-18.04" "19.30-838629-ubuntu-18.04" "19.50-967956-ubuntu-18.04" "Quit")

select opt in "${options[@]}"
do
case $opt in
    "16.40-348864-ubuntu-16.04")
    wget http://download.hiveos.farm/drivers/amdgpu-pro-16.40-348864.tar.xz
        version="16.40-348864";break
    ;;
    "16.60-379184-ubuntu-16.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-16.60-379184.tar.xz
        version="16.60-379184";break
    ;;
    "17.10-429170-ubuntu-16.04")
    wget http://download.hiveos.farm/drivers/amdgpu-pro-17.10-429170.tar.xz
        version="17.10-429170";break
    ;;
    "17.10-450821-ubuntu-16.04")
    wget http://download.hiveos.farm/drivers/amdgpu-pro-17.10-450821.tar.xz
        version="17.10-450821";break
    ;;
    "17.30-458935-ubuntu-16.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-17.30-458935.tar.xz
        version="17.30-458935";break
    ;;
    "17.30-465504-ubuntu-16.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-17.30-465504.tar.xz
        version="17.30-465504";break
    ;;
    "17.40-492261-ubuntu-16.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-17.40-492261.tar.xz
        version="17.40-492261";break
    ;; 
    "17.40-483984-ubuntu-16.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-17.40-483984.tar.xz
        version="17.40-483984";break
    ;;
    "17.50-511655-ubuntu-16.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-17.50-511655.tar.xz
        version="17.50-511655";break
    ;;
    "18.10-572953-ubuntu-16.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-18.10-572953.tar.xz
        version="18.10-572953";break
    ;;
    "18.20-606296-ubuntu-18.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-18.20-606296-18.04.tar.xz
        version="18.20-606296-18.04";break
    ;;
    "18.30-641594-ubuntu-18.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-18.30-641594-18.04.tar.xz
        version="18.30-641594-18.04";break
    ;;
    "18.30-641594-ubuntu-16.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-18.30-641594.tar.xz
        version="18.30-641594";break
    ;;
    "18.40-673869-ubuntu-16.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-18.40-673869-ubuntu-16.04.tar.xz
        version="18.40-673869-ubuntu-16.04";break
    ;;
    "18.40-697810-ubuntu-18.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-18.40-697810-ubuntu-18.04.tar.xz
        version="18.40-697810-ubuntu-18.04";break
    ;;
    "19.10-785425-ubuntu-18.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-19.10-785425-ubuntu-18.04.tar.xz
        version="19.10-785425-ubuntu-18.04";break
    ;;
	"19.10-725072-ubuntu-18.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-19.10-785425-ubuntu-18.04.tar.xz
        version="19.10-725072-ubuntu-18.04";break
	;;
	"19.20-812932-ubuntu-18.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-19.20-812932-ubuntu-18.04.tar.xz
        version="19.20-812932-ubuntu-18.04";break	
    ;;
	"20.30-1109583-ubuntu-18.04")
	wget https://downloader.disk.yandex.ru/disk/d6255b317a1cd0b9e99193bc6cff997bd2bf7955563c117bad0c4ef06486e566/5f979e5a/q9eHMnZ_lLoJ9U0BdLxzOmznRRhJTkx8sHXX8MsLhkLJ9qn9pcb7Vxel6JgV-eTlCAAwYGraHeBF3UKasMoz8A%3D%3D?uid=0&filename=amdgpu-pro-20.30-1109583-ubuntu-18.04.tar.xz&disposition=attachment&hash=0BjVuTu%2BDYheDnrFqvLf82GmgWERuh0Yr2w6%2BZ/HhWvFT2xDFxPC2f5C3TiaOr0vq/J6bpmRyOJonT3VoXnDag%3D%3D&limit=0&content_type=application%2Fx-xz&owner_uid=941437701&fsize=339323956&hid=fb29cfb32cc52bae14cbc5b4aa79477f&media_type=unknown&tknv=v2/amdgpu-pro-20.30-1109583-ubuntu-18.04.tar.xz
        version="20.30-1109583-ubuntu-18.04";break
    ;;
	"19.50-967956-ubuntu-18.04")
	wget http://download.hiveos.farm/drivers/amdgpu-pro-19.50-967956-ubuntu-18.04.tar.xz
        version="19.50-967956-ubuntu-18.04";break
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
