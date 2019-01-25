class profile::mattermost {
  class { 'mattermost':
    override_options => {
      'ServiceSettings' => {
        'ListenAddress' => ':80',
      },
      'SqlSettings'     => {
        'DriverName' => 'postgres',
        'DataSource' => 'postgres://mattermost:mattermost@127.0.0.1:5432/mattermost?sslmode=disable&connect_timeout=10',
      },
    },
  }
}
