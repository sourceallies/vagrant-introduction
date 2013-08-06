class myapp {
	include apache
	
	file { '/var/www/index.html':
		source => "puppet:///modules/myapp/index.html",
		require => Service["apache2"],
	}
}