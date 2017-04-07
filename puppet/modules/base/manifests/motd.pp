class base::motd {
	
	$author = $base::params::author
	
	file {'/etc/testmotd.txt':
		ensure => present,
		owner => 'root',
		group => 'root',
		content => template('base/motd.erb'),
		mode => '0644',
	}
}
