class myapp(
	$name,
	){
	class { "apache": }
		
	file { '/var/www/index.html':
		content => template('myapp/index.html.erb'),
		require => File["/var/www"],
	}
	
#	file { '/var/www/index.html':
#		source => "puppet:///modules/myapp/index.html",
#		require => File["/var/www"],
#	}
}