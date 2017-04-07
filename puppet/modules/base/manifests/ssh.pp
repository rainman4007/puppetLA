class base::ssh {

	package { 'openssh-package':
		name => 'openssh-server',
		ensure => present,
	}

	file { '/etc/ssh/sshd_config':
		ensure => file,
		owner => 'root', 
		group =>  'root',
		require => Package['openssh-package'],
		source => 'puppet:///modules/base/sshd_config',
		#can user ssh-service-name-two as well
		notify => Service['ssh-service'],

	}
	
	service { 'ssh-service':
		# this is how we get the value of ssh_name which is a var defined out side this class and in params.pp
		# ssh_name can be obtained just by base::ssh inherits base::params(but not suggestable)
		name => $base::params::ssh_name,
		ensure => running,
		alias => 'ssh-service-name-two',
		enable => true,
	}
}

