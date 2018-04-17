#!/usr/bin/bash

NOW=`date +%Y%m%d_%H%M`

cd '/d/Project/VR Scrum/VR_Scrum' ; pwd

function log(){
  echo "[$(date --rfc-3339=seconds)] $1" >> $LOG_FILE
}

log "git add"
git add .

log "git commit - version $NOW"
git commit -m"version $NOW"

log "git push vr $NOW"
git push vr