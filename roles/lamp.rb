name "lamp"

run_list(
  "recipe[apt]",
  "recipe[logrotate]",
  "recipe[iptables]",
  "recipe[openssh::iptables]",
  "recipe[apache2]",
  "recipe[apache2::php5]",
  "recipe[apache2::iptables]",
  "recipe[apache2::mod_ssl]"
)

default_attributes(
  "apache" => {
    "listen_ports" => ["80", "443"]
  }
)
