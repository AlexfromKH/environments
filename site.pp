# hiera_include('classes')
<<<<<<< HEAD
<<<<<<< HEAD
include puppet_env
include puppet_webserver
=======
node default {
  include role::lamp
}
>>>>>>> staging
=======
#include puppet_env
#include puppet_webserver
# node default {
  # include role::lamp
# }
node "centos-agent" {
  include role::forge_mattermost
}
>>>>>>> test
