wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xvzf ngrok-v3-stable-linux-amd64.tgz
./ngrok authtoken 2caMIyH98jojFijfUDA9HHKZDZ0_2naziucGo1SjGJ4xWL8QM
nohup ./ngrok tcp 5900 >/dev/null 2>&1
echo Ngrok Connect!
echo -------------------------------
sudo apt update -y > /dev/null 2>&1
echo "Installing QEMU..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Downloading Windows Disk...
curl -L -o lite7.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.0.3/providers/qemu.box
echo "Windows 10 x64 Lite"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo Script by fb.me/LeVuHg
echo Starting Windows...
sudo qemu-system-x86_64 -vnc :0 -hda lite7.qcow2  -smp cores=2  -m 3072M -machine usb=on -device usb-tablet
