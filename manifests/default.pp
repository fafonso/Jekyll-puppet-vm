#################################
##       Configurations        ##
#################################

class { 'vmbuilder' : 
	
	## Set your Jekyll project here to automatically start serving them in localhost:14000
	## Example1: "/jekyll_project_1"
	## Example2: "/" - If you have your jekyll project at same level as these puppet modules
	## Example3: ""  - If you don't want to start jekyll with puppet modules
	#project_path  => "",
}






