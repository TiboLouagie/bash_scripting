#!/bin/bash

DAY="zo"
#date -d "sunday 17:00:00"

#What to backup
backup_files="source"

#Where to backup to
dest="destination"

#Create archive filename
day="zo"
datum=$(date +%a)
hostname=$(hostname)

archive_file="$hostname-$datum.tgz"

#Print start status message
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

#Backup the files using tar
tar czf $dest/$archive_file $backup_files

#Print end status message



exit 0