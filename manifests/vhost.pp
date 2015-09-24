define lmmsweb::vhost (
 $template='lmmsweb/localise.mapofmedicine.com.conf.erb', 
){
  
  include lmmsweb
  include lmmsweb::params
  
  file {"$::lmmsweb::params::sites_enabled_directory/${name}.conf":
    content => template($template),
    owner => 'root',
    group => 'root',
    mode => '0640',
    require => Class['lmmsweb::install'],
    notify => Class['lmmsweb::service'],
  }
}