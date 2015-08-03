class vmbuilder(
    $project_path = "",
  ) {
  

  package {"wget":
    name   => "wget",
    ensure => present,
  }

  #Updating APT
  class { 'apt':
    update => {
      frequency => 'daily',
    }
  }

  class { 'jekyll':
    project_path  => $project_path,
    require => [ Package["wget"],
               ]
  }  



}