# Add a custom HTTP header with Puppet
# Install Nginx
package { 'nginx':
  ensure => 'installed',
}

# Allow Nginx through Firewall
firewall { '100 allow nginx':
  port   => 80,
  proto  => 'tcp',
  action => 'accept',
}

# Backup default Nginx configuration
file { '/etc/nginx/sites-available/default.bak':
  ensure => 'present',
  source => '/etc/nginx/sites-available/default',
}

# Configure Nginx
file { '/etc/nginx/sites-available/default':
  ensure  => 'file',
  content => "
    server {
        listen 80;
        server_name _;

        location / {
            add_header X-Served-By $::hostname;
            add_header Content-Type text/plain;
            return 200 'Hello World!';
        }
    }
  ",
  notify  => Service['nginx'],
}

# Restart Nginx
service { 'nginx':
  ensure    => 'running',
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}

