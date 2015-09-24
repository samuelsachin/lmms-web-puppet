define lmmsweb::vhost (
 $template='lmmsweb/localise.mapofmedicine.com.conf.erb', 
){
  
  include lmmsweb
  include lmmsweb::params
  
  file {"$::lmmsweb::params::sites_available_directory/${name}.conf":
    content => template($template),
    owner => 'root',
    group => 'root',
    mode => '0640',
    require => Class['lmmsweb::install'],
    notify => Lmmsweb::Ensite["$name"]
  }
  
  lmmsweb::ensite {"$name":
    require => File["$::lmmsweb::params::sites_available_directory/${name}.conf"],
    notify => Class['lmmsweb::service'],
  }

}

