#!/bin/sh

str="someFileName.foo"
find="."
replace="/"
# notice the the str isn't prefixed with $
#    this is just how this feature works :/
result=${str//$find/$replace}
echo $result

echo "${str}"
