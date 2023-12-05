# Custom HTTP header in an Nginx server
exec { 'update-and-install-nginx':
  command  => 'apt-get -y update && apt-get -y install nginx',
  provider => shell,
}
exec { 'configure-nginx':
  command  => 'sudo sed -i "/listen 80 default_server;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default && service nginx restart',
  provider => shell,
  require  => Exec['update-and-install-nginx'],
}

