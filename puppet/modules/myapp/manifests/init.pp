class myapp(
	$name,
	){
	class { "apache": }
	
	file { '/var/www/index.html':
		content => template('myapp/index.html.erb'),
		require => Service["apache2"],
	}
	
#	file { '/var/www/index.html':
#		source => "puppet:///modules/myapp/index.html",
#		require => Service["apache2"],
#	}
}