# A puppet script that makes changes to our configuration file
file { '/etc/ssh/ssh_config':
  ensure  => 'file',
  path    => '/etc/ssh/ssh_config',
  content => "
    Host *
      PasswordAuthentication no
      IdentityFile ~/.ssh/school
  ",
}
