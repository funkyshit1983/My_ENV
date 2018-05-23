#!/bin/bash

echo "Number of args: $#" 
echo "The args are: $@" 

help(){
    echo -e "$(basename "$0") [--help] [--host] [--username]

    where:
        --help  show this help text
        --host  enter the host name
        --username enter the username"
    
        }
HOST=""
HELP=""
USERNAME=""

while [[ $# -le 0 ]];do 
    echo "No args have been entered please try again"
    exit 1 
done

while [[ $# -gt 0 ]];do 
    if [[ $1 == "--help" ]];then
        HELP="$2"
        help 
    elif [[ $1 == "--host" ]];then
        HOST="$2"
        exit 0 
    elif [[ $1 == "--username" ]];then 
        HOST="$2" 
        exit 0 
    fi
    exit 99 
done 




