# Jekyll VM Setup #

Project for ramp up a VM running [Jekyll](http://jekyllrb.com/) from scratch using [Puppet](https://puppetlabs.com/) and [Vagrant](https://www.vagrantup.com/).

#### Prerequisites ####

* [Vagrant](http://docs.vagrantup.com/v2/getting-started/index.html) 
* [VirtualBox](https://www.virtualbox.org/)
* [Ubuntu trusty64 - Vagrant box](https://atlas.hashicorp.com/ubuntu/boxes/trusty64)

### Folder structure ###

 - Project Root
 |- Vagrantfile
 |- modules
 |- manifest
 |- (other vagrant + puppet project files)
 |- Jekyll_Project_1

### Usage ###

+ Go to the terminal and execute "vagrant up" on the project root directory
+ Execute "vagrant ssh"
+ *Cd* into the folder where your Jekyll website is stored.
+ Then, *jekyll serve --watch*
+ View your website at (http://localhost:14000)

** Alternatively ** 

Set the variable *project_path* (project path, relative to your Vagrant project root directory, example: "Jekyll_Project_1"), and all you need to do is execute "vagrant up" on the project root directory.

#### VM Exposed Ports #####

* host: 14000,  guest: 4000 (Jekyll)

#### VM Default Configuration #####

* 1 CPU
* 1024MB RAM