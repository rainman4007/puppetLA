class practice::file{
	file {'/etc/motd':
		ensure => file,
		content => "welcome to my server!!",
	}
	file {'/etc/motd':
		parth => '/etc/motd.tail',
		content => 'welcome to my server 2',
	}
}
