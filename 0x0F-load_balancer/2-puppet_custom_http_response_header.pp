# Custom HTTP header in an Nginx server
exec {'update':
  command => '/usr/bin/apt-get update',
}

# Install Nginx web server on the server
package { 'nginx':
  ensure   => present,
}


file_line { 'add X-Served-By header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => "    add_header X-Served-By $hostname;",
}

exec {'start':
  command => '/usr/sbin/service nginx start',
}
