# hiera_include('classes')
<<<<<<< HEAD
include puppet_env
include puppet_webserver

=======
node default {
  include role::lamp
}
node "ubuntu-agent" {
  include role::forge_mattermost
}
>>>>>>> staging
