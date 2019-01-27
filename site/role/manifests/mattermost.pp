class role::mattermost {
  include profile::mysql
  include profile::mattermost
  include profile::nginx

Class['profile::mysql'] -> Class['profile::mattermost'] -> Class['profile::nginx']
}
