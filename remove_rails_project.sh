#!/bin/bash
set -e
echo -e "Project Name : \c"
read pname
pname="${pname// /_}"
# pname="${pname,,}"
pname=$(echo $pname | tr '[:upper:]' '[:lower:]')
rvm gemset delete $pname # to remove gemset, the gemset name should be the same as project name or you can modify this command.
rm -rf $pname
echo "Successfully removed $pname gemset."
echo "Successfully removed $pname project."
