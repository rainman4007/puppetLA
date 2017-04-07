class filedemo {
	# this File block are the default values for file resource type unless other values are specified

	File {
		owner => 'root',
		group => 'finance',
		mode => '0660',
	}	
	
	$homedir = "/root"
	$content = "this is my way of showing how to use $"
	
	file { "${homedir}/myfile1.txt":
		content => $content,
	}
	
	file { "${homedir}/myfile2.txt":
		content => "This is my file2",
	}

	file { "${homedir}/myfile3.txt":
		content => "this is my file3",
		group => root,
		owner => admin,
	}

	file {'/root/motd':
		ensure => present,
		source => 'puppet:///modules/filedemo/motd',
		owner => root,
		group => root,
		mode => '0644',
	}
	
	file {'/etc/motd':
		ensure => link,
		target => '/root/motd',
	}
}
