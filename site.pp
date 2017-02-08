node default {
file { '/tmp/hello':
content => "Hello, World\n",
owner => 'root',
group => 'root',
mode => '0666',
}

package{"vsftpd": ensure => present,}
service {"vsftpd": ensure => running,}
}
