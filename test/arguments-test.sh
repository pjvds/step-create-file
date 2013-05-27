describe "create-file step"

before() {
    if ! type -f "_message" &> /dev/null
    then
        source lib/wercker-essentials.sh
    fi
}

it_fails_when_filename_is_missing() {
    src/run.sh 2>&1 | grep -q "missing filename option"
}

it_fails_when_filename_is_empty_missing() {
    export WERCKER_CREATE_FILE_FILENAME=""
    src/run.sh 2>&1 | grep -q "missing filename option"
}
