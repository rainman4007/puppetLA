class ntp ($package = $ntp::params::package_name) inherits ntp::params {
	package {'ntp':
		name => $package,
		ensure => present,
	}		
	include ntp::service	
	include ntp::file
}	
