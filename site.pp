node default {
file { '/tmp/hello':
content => "Hello, World\n",
owner => 'root',
group => 'root',
mode => '0666',
}

package{"vsftpd": ensure => present,}
service {"vsftpd": ensure => running,}

user{'eric':
ensure => present,
comment => 'Eric, Good',
home => '/home/eric',
managehome => true,
 }
 user{'ram':
ensure => present,
comment => 'Ram, gopal',
home => '/home/ram',
managehome => true,
 }
 
}
