#!/bin/bash
# Reference : http://railsapps.github.io/installrubyonrails-mac.html
set -e
source ~/.rvm/scripts/rvm
# create a gemset before running this script or
# you can use global gemset or it will automatically if it is not exist
rvm gemset use rails6 --create 
echo -e "Project Name : \c"
read pname
pname="${pname// /_}"   # here it'll replace spaces with underscores
# pname="${pname,,}"      # require bash 4 to convert to lowercase
pname=$(echo $pname | tr '[:upper:]' '[:lower:]')
mkdir $pname
echo "Successfully created $pname/"
cd $pname
rvm use ruby-2.7@$pname --ruby-version --create
echo "Successfully created $pname gemset with ruby version 2.6.0"
gem install rails
echo "Successfully installed rails"
rails new . --database=postgresql       # default DB is selected to postgresql
echo "Successfully created $pname project."
