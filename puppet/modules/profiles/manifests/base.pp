class profiles::base{
	include base
	include base::params
	include base::ssh
	include base::var
	include localusers
	include localusers::groups::finance
	include localusers::groups::wheel
	class {'ntp': package => 'ntp',}

}
