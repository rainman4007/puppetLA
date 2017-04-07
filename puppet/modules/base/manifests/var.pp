class base::var {
	file { '/root/var_test.txt':
		content => $topscope,
		owner => 'root',
		group => 'root',
		mode => '0644',
	}
	notify { "${::operatingsystem} is your operatins system":}
}
