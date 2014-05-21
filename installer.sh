#!/bin/bash
read -p "Insert your username:" user
if `grep -e "^$user:.*" /etc/passwd >/dev/null`
then
	sudo cp -r compiler6809 /usr/bin/compiler6809
	sudo chmod u+x /usr/bin/compiler6809/* 
	sudo chown -R $user /usr/bin/compiler6809
	sudo chmod -R 777 /usr/bin/compiler6809
	cp /home/$user/.bashrc /home/$user/.bashrc-backup
	sudo echo "PATH=\$PATH:/usr/bin/compiler6809" >> /home/$user/.bashrc

else

	echo "User not exists."
fi
