# hiera_include('classes')
#  include role::lamp
# }
node "centos-agent" {
  include role::mattermost
}
