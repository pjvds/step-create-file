testExample() {
    result=$(echo 'Hello, world!')
    assertEquals "$result" 'Hello, world!'
}

testFailsWhenFilenameIsMissing () {
    expected='missing filename option'
    actual=$(./src/run.sh)

    if [ "${actual#*$expected}" != "$string" ]
    then
        fail "failure message did not contain: $expected"
    fi
}
