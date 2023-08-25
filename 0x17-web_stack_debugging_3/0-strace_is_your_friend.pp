# manifest file: 0-strace_is_your_friend.pp
# Use strace to find out why Apache is returning a 500 error

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}

service { 'apache2':
  ensure => 'running',
  notify => Exec['fix-wordpress'],
}
