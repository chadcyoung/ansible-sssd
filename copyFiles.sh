#!/usr/bash

	rm -r /etc/ansible/ansibleconffiles
	ssh -t  dc2rh028tst.clubcorp.com 'mkdir ~/ansibleconffiles && 
					sudo cp /etc/resolv.conf ~/ansibleconffiles/ &&
					sudo cp /etc/krb5.conf ~/ansibleconffiles/ &&
					sudo cp /etc/sssd/sssd.conf ~/ansibleconffiles/ &&
					sudo cp /etc/samba/smb.conf ~/ansibleconffiles/ &&
					sudo cp /etc/hosts ~/ansibleconffiles/ && 
					sudo cp /etc/nsswitch.conf ~/ansibleconffiles/ && 
					sudo cp /etc/root_cert.pem ~/ansibleconffiles/ && 
					sudo cp /etc/system-auth ~/ansibleconffiles/ &&
					sudo chown chyoung:chyoung ~/ansibleconffiles/sssd.conf &&
					chmod 666 ~/ansibleconffiles/sssd.conf'
	scp -r chyoung@dc2rh028tst.clubcorp.com:~/ansibleconffiles /etc/ansible/




