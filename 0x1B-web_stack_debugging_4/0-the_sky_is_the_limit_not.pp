# manifest file: 0-the_sky_is_the_limit_not.pp
# adjust the web stack so that it can handle 1000 request with 100 at a time

exec { 'fix--for-nginx':
  onlyif  => 'test -e /etc/default/nginx',
  command => 'sed -i "5s/[0-9]\+/$( ulimit -n )/" /etc/default/nginx; service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
