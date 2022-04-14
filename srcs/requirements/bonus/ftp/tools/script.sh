#!/bin/sh

# Add ftp user
adduser -D ${FTP_USER} && echo ${FTP_USER}:${FTP_PASS} | chpasswd

#  Change owner of /home/issam folder
chown -R ${FTP_USER}:${FTP_USER} /home/"${FTP_USER}"

# Run ftp on foreground mode 
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf