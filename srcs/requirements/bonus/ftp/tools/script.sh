#!/bin/sh

echo -e "$FT_PASS\n$FT_PASS" | adduser $FT_USER
echo $FT_USER | tee -a /etc/vsftpd.userlist
mkdir /home/ahaddad/wordpress
chown -R ahaddad:ahaddad /home/ahaddad/
#chmod 777 /home/ahaddad/wordpress

exec /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
