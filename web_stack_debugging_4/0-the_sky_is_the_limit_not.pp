#Let's test our server

exec { 'ULIMIT':
  onlyif  => 'test -e /etc/default/nginx',
  command => 'sed -i "5s/[0-9]\+/$( ulimit -n )/" /etc/default/nginx; service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
