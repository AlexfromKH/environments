class role::forge_mattermost {
  include profile::nginx
  include profile::postgresql
  include profile::mattermost

  Class['profile::postgresql'] -> Class['profile::mattermost'] ~> Class['profile::nginx']
}
