# Creates a manifest that kills a process named killmenow
exec { 'kill':
  command => 'pkill -f kilmenow',
  path    => ['/usr/bin', '/usr/sbin']
}
