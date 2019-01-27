class role::forge_mattermost {
  include profile::nginx
  include profile::postgresql
  include profile::forge_mattermost

  Class['profile::postgresql'] -> Class['profile::forge_mattermost'] ~> Class['profile::nginx']
}
