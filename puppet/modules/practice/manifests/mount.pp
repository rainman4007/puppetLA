class practice::mount{
	file {'/content':
		ensure => directory,
	}	
	mount {'/content':
		device => '/dev/xvdf',
		fstype => 'ext2',
		option => 'defaults',
		ensure => 'mounted',
		
	}
}
