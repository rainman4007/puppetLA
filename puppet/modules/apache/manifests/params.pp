class apache::params{
#specify a servername for our virtual host config files
#here fqdn(fully qualified domain aname) is availabe for this node, then set servername to that fqdn or just set it to hostname

if($::fqdn){
	$servername = $::fqdn	
}
else{
	$servername = $::hostname
}
$document_root = "/var/www/websites"

$log_dir = "/var/log/apache"

case $::osfamily {
	'RedHat': {
		$package_name = "httpd"
		$service_name = "httpd"
		$conf_dir = "/etc/httpd/conf"
		$vhost_dir = "/etc/httpd/conf.d"			
	          }
	
	'Debian': {
		$package_name = "apache2"
                $service_name = "apache2"
                $conf_dir = "/etc/apache"
                $vhost_dir = "/etc/apache2/sites-enabled"

		}
	}
}
