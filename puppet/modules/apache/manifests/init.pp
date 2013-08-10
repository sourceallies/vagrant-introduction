class apache {
	package { "apache2":
		ensure => present,
	}
	
	service { "apache2":
		ensure => running,
		require => Package["apache2"],
	}
	
	file { "/var/www":
		ensure => directory,
		notify => Service["apache2"],
	}
	
}