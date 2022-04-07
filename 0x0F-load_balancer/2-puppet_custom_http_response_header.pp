# configures a server to add X-Served-By header
exec {'configureServer':
  provider => shell,
  command  => 'apt-get -y update; apt-get install -y nginx; sed -i "/server_name _;/a add_header X-Served-By $(hostname);" /etc/nginx/sites-available/default;service nginx restart;'
}
