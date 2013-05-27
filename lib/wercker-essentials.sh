WARN_COLOR=$(tput setaf 3 ; tput bold)
SUCCESS_COLOR=$(tput setaf 2 ; tput bold)
ERROR_COLOR=$(tput setaf 1 ; tput bold)
INFO_COLOR=$(tput setaf 7)
DEBUG_COLOR=$(tput setaf 8)
RESET_COLOR="\e[m"

_message () {
    msg=$1
    color=$2
    echo -e "${color}${msg}${RESET_COLOR}"
}

success () {
    _message "${1}" $SUCCESS_COLOR
}

info () {
    _message "${1}" $INFO_COLOR
}

debug () {
    _message "${1}" $DEBUG_COLOR
}

warn () {
    _message "${1}" $WARN_COLOR
}

error () {
    _message "error: ${1}" $ERROR_COLOR
}

fail () {
    _message "failed: ${1}" $ERROR_COLOR
    exit 1
}

# Make sure we fail on all errors
set -e

# export the functions
export success
export info
export debug
export warn
export error
export fail
export _message
