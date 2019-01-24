class { 'postgresql::globals':
  manage_package_repo => true,
  version             => '9.4',
}
class { 'postgresql::server':
  ipv4acls => ['host all all 127.0.0.1/32 md5'],
}
postgresql::server::db { 'mattermost':
  user     => 'mattermost',
  password => postgresql_password('mattermost', 'mattermost'),
}
postgresql::server::database_grant { 'mattermost':
  privilege => 'ALL',
  db        => 'mattermost',
  role      => 'mattermost',
}
