# hiera_include('classes')
node default {
  include role::lamp
}
node "ubuntu-agent" {
  include role::forge_mattermost
}
