# Rails Scripts

This directory contains two files :-
- new_rails_project.sh
- remove_rails_project.sh

##  new_rails_project.sh
This script creates a new rails project and a gemset for the same project.

Before executing this script your system needs to have RVM installed.

This script is using rails5.2 *(name of gemset)* gemset which you've to create with Ruby 2.6.0 and Rails 5.2 installed in it. Or you can create your own gemset and you can also install any appropriate version of Ruby and Rails and modify the script accordingly. If you want you can also use global gemset as well.

Note : bash version 4 is needed to run this script and this script is tested on OSX only.

### how to run new_rails_project.sh
- copy and paste _new_rails_project.sh_ where you want to create  a new rails project.
- open terminal go to your project directory by `cd project_directory_path`
- give permission to new_rails_project.sh file by `chmod 777 new_rails_project.sh`
- type `./new_rails_project.sh` and hit return/enter.



## remove_rails_project.sh
This script delete your rails project as well as it's gemset also. It'll delete only in condition when your project name and gemset name is same. Otherwise it just delete your project only.

### how to run remove_rails_project.sh
- copy and paste _remove_rails_project.sh_ where your project directory is located.
- open terminal go to your project directory by `cd project_directory_path`
- give permission to remove_rails_project.sh file by `chmod 777 remove_rails_project.sh`
- type `./remove_rails_project.sh` and hit return/enter.


## References
[RailsApps Project](http://railsapps.github.io/installrubyonrails-mac.html)

## Contributing 
1. Fork it ( https://github.com/TuxEducation/rails-scripts/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
