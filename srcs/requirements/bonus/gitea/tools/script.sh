#!/bin/sh
 
GITEA_WORK_DIR=/var/lib/gitea exec gitea web --config /etc/gitea/app.ini
#exec GITEA_WORK_DIR=/var/lib/gitea/ /usr/local/bin/gitea web -c /etc/gitea/app.ini
#service  gitea start
#/var/lib/gitea gitea web -c /etc/gitea/app.ini
