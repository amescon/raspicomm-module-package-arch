:: copy files to the rpi
scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null *.install PKGBUILD pi@192.168.2.107:/home/pi/raspicommrs485

:: update the checksums & build the package
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null pi@192.168.2.107 "cd /home/pi/raspicommrs485; updpkgsums; makepkg -f"
