class localusers {
	user { 'admin':
		ensure => present,
		shell => '/bin/bash',
		home => '/home/admin',
		gid => 'wheel',
		managehome => true,
		password => '$6$dE.cDOkL$9oF.583CM3hNOoORURxjH/2chRFmiaiUk/88erLYSC3gD3wvULH8X7pzTltOfM8l8u6mpdArz4kNGQ9we/ocf0',
	}
	user { 'jeff':

		ensure => present,
		shell => '/bin/bash',
		home => '/home/jeff',
		groups => ['wheel', 'finance'],
		managehome => true,

	}

}
