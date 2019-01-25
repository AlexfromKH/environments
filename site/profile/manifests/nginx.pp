class profile::nginx {
  class { 'nginx': }
  nginx::resource::upstream {'mattermost':
    ensure  => present,
    members => {
      'localhost:8065' => {
        server => 'localhost',
        port   => 8065,
      },
    },
  }
  nginx::resource::server { 'mattermost':
    server_name         => [ 'myserver.mydomain' ],
    proxy               => 'http://mattermost',
    location_cfg_append => {
      'proxy_http_version'          => '1.1',
      'proxy_set_header Upgrade'    => '$http_upgrade',
      'proxy_set_header Connection' => '"upgrade"',
    },
  }
}
