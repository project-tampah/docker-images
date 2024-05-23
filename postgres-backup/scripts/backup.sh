#!/usr/bin/env bash

# Path to the log file
export LOG="/var/log/cron.log"

# some helpers and error handling:
info() { printf "\n%s %s\n\n" "$(date)" "$*" >&2; }
trap 'echo $( date ) Backup interrupted >&2; exit 2' INT TERM

# Output to a logfile
exec > >(tee -i ${LOG})
exec 2>&1

info "Creating postgres backup ..."
/scripts/backup

info "Uploading to aws s3 bucket ..."
/scripts/upload

info "Running POST Script ..."
/scripts/post
