class jekyll(
  $project_path = "",
  ) {

  apt::ppa{'ppa:brightbox/ruby-ng':}
  
  package { 'ruby2.2':
    ensure  => present,
    before  => Package['github-pages'],
    require => Apt::Ppa['ppa:brightbox/ruby-ng'],
  }

  package { 'ruby2.2-dev':
    ensure  => present,
    before  => Package['github-pages'],
    require => Apt::Ppa['ppa:brightbox/ruby-ng'],
  }

  package { 'make':
    ensure  => present,
    before  => Package['github-pages'],
    require => Apt::Ppa['ppa:brightbox/ruby-ng'],
  }

  package { 'gcc':
    ensure  => present,
    before  => Package['github-pages'],
    require => Apt::Ppa['ppa:brightbox/ruby-ng'],
  }

  package { 'nodejs':
    ensure  => present,
    before  => Package['github-pages'],
    require => Apt::Ppa['ppa:brightbox/ruby-ng'],
  }

  package { 'zlib1g-dev':
    ensure  => present,
    before  => Package['github-pages'],
    require => Apt::Ppa['ppa:brightbox/ruby-ng'],
  }

  package { 'github-pages':
    provider => gem,
    ensure   => present,
  }

  if ($project_path) { 

    $jekyll_project_path = "/vagrant${project_path}"

    exec {"run-jekyll":
      command => "jekyll serve --detach --watch -H 0.0.0.0",
      cwd     => $jekyll_project_path,
      path    => ["/usr/bin", "/bin", "/usr/local/bin"],
      require => Package["github-pages"],
    }

  }
  
}