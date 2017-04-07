class hierademo($domain_name = "default", $api_key = "default_api_key"){
	$domainname = hiera('domain_name')
	notify { "the hiera domain value is: ${domainname}":}
	#notify { " the domain name value is: ${domain_name}":}
	#notify { " the ap key value is: ${api_key}":}

}
