# Puppet Manifest: add_libfoo_path.pp
# Description: Add libfoo.so path to LD_LIBRARY_PATH and restart Apache service

# Set LD_LIBRARY_PATH in /etc/environment
file { '/etc/environment':
  ensure  => present,
  content => 'LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/path/to/libfoo',
  mode    => '0644',
}

# Reload environment variables
exec { 'reload_environment':
  command     => 'exec -l $SHELL',
  refreshonly => true,
  subscribe   => File['/etc/environment'],
}

# Restart Apache service
service { 'apache2':
  ensure     => running,
  subscribe => Exec['reload_environment'],
}

