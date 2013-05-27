#!/bin/bash
WARN_COLOR=$(tput setaf 3 ; tput bold)
SUCCESS_COLOR=$(tput setaf 2 ; tput bold)
ERROR_COLOR=$(tput setaf 1 ; tput bold)
INFO_COLOR=$(tput setaf 7)
DEBUG_COLOR=$(tput setaf 8)
RESET_COLOR="\e[m"

function _message {
    msg=$1
    color=$2
    echo -e "${color}${msg}${RESET_COLOR}"
}

function success {
    _message "${1}" $SUCCESS_COLOR
}

function info {
    _message "${1}" $INFO_COLOR
}

function debug {
    _message "${1}" $DEBUG_COLOR
}

function warn {
    _message "${1}" $WARN_COLOR
}

function error {
    _message "error: ${1}" $ERROR_COLOR
}

function fail {
    _message "failed: ${1}" $ERROR_COLOR
    exit 1
}

# Make sure we fail on all errors
set -e

# export the functions
export -f success
export -f info
export -f debug
export -f warn
export -f error
export -f fail
export -f _message
