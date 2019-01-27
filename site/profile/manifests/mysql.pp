class { '::mysql::server':
  root_password           => 'lookup(mysql_r_pass)',
  remove_default_accounts => true,
}
mysql::db { 'mattermost':
  user     => 'lookup(mmuser)',
  password => 'lookup(mmpass)',
  host     => 'localhost',
  grant    => ['ALL'],
}
