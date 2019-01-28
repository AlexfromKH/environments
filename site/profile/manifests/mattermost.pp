class profile::mattermost {
  $mmversion      = lookup('mmversion')
  $mmdir          = '/opt/'
  $mmdata         = "${mmdir}/mattermost/data"
  $mmdownload     = "https://releases.mattermost.com/${mmversion}/mattermost-team-${mmversion}-linux-amd64.tar.gz"

  archive {"mattermost-team-${mmversion}-linux-amd64.tar.gz"
    ensure        => present,
    extract       => true,
    source        => "${mmdownload}",
    checksum      => '1220e25f501e41db9bee6af14dd12583c1f95658a55862da42a1268d160b10c4',
    checksum_type => 'sha256',
    creates       => '/opt/mattermost',
  }
}
