# A manifest that kills a process named killmenow.
exec { 'killmenow':
  command => '/usr/bin/pkill killmenow',
  onlyif  => '/usr/bin/pgrep killmenow',
}
