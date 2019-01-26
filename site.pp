# hiera_include('classes')
# node default {
#  include role::lamp
# }
node "centos-agent" {
  include role::forge_mattermost
}
