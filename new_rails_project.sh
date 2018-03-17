#!/bin/bash
# Refrence : http://railsapps.github.io/installrubyonrails-mac.html
source ~/.rvm/scripts/rvm
rvm gemset use rails5.2     # create a gemset before running this script or you can use global gemset
echo -e "Project Name : \c"
read pname
pname="${pname// /_}"   # here it'll replace spaces with underscores
pname="${pname,,}"      # require bash 4 to convert to lowercase
mkdir $pname
echo "Successfully created $pname/"
cd $pname
rvm use ruby-2.5.0@$pname --ruby-version --create
echo "Successfully created $pname gemset with ruby version 2.5.0"
gem install rails
echo "Successfully installed rails"
rails new . --database=postgresql       # default DB is selected to postgresql
echo "Successfully created $pname project."
