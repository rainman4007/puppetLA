class base::params {
	
	$author = "triv"
	 
	case $::osfamily {
                'RedHat' : { $ssh_name = 'sshd'}
                'Debian' : { $ssh_name = 'ssh'}
                default :  {fail('OS not support by puppet module SSH')}
        }

        #$ssh_name = $osfamily ? {
        #       'RedHat' => 'sshd',
        #       'Debian' => 'ssh',
        #  
}

