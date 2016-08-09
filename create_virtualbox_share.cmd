VBoxManage sharedfolder add default --automount --name %1 --hostpath "\\?\%2"
pause Press any key to start VM
VBoxManage startvm default --type headless
pause Press any key when VM has booted
echo -e "sudo echo -e 'mkdir -p %1 ; mount -t vboxsf -o uid=1000,gid=50 %1 %1' >> /var/lib/boot2docker/bootlocal.sh" > a.tmp
type a.tmp
VBoxManage guestcontrol default exec --image /bin/sh --username docker --password tcuser --wait-exit --wait-stdout --wait-stderr -- -c 'sudo echo -e "mkdir -p %1 ; mount -t vboxsf -o uid=1000,gid=50 %1 %1" >> /var/lib/boot2docker/bootlocal.sh'