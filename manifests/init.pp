# Class: lmmsweb
#
# This module manages lmmsweb
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#sambu
class lmmsweb {
  include lmmsweb::install
  include lmmsweb::service
  
  lmmsweb::vhost {'lmmsweb.mapofmedicine.com':
    template => "lmmsweb/localise.mapofmedicine.com.conf.erb",
  }
}
