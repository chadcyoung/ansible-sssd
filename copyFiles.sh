#!/usr/bash

	rm -r /etc/ansible/confFiles
	ssh -t  dc2rh028tst.clubcorp.com 'sudo rm -r ~/ansibleconffiles &&
					mkdir ~/ansibleconffiles && 
					sudo cp /etc/resolv.conf ~/ansibleconffiles/ &&
					sudo cp /etc/krb5.conf ~/ansibleconffiles/ &&
					sudo cp /etc/sssd/sssd.conf ~/ansibleconffiles/ &&
					sudo cp /etc/samba/smb.conf ~/ansibleconffiles/ &&
					sudo cp /etc/hosts ~/ansibleconffiles/ && 
					sudo cp /etc/nsswitch.conf ~/ansibleconffiles/ && 
					sudo cp /etc/openldap/cacerts/root_cert.pem ~/ansibleconffiles/ && 
					sudo cp /etc/pam.d/system-auth ~/ansibleconffiles/ &&
					sudo chmod 777 ~/ansibleconffiles/sssd.conf'
	scp -r dc2rh028tst.clubcorp.com:~/ansibleconffiles /etc/ansible/
	

	find /etc/ansible/ansibleconffiles/* -type f -exec mv '{}' '{}'.j2 \;
	mv /etc/ansible/ansibleconffiles /etc/ansible/confFiles
	#sudo rm -r ansibleconffiles

