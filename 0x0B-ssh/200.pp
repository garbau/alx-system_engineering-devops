file { '/etc/ssh/ssh_config':
  ensure  => present,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => "
    # SSH client configuration
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  ",
}
