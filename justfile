default:
  @just --choose

apply:
  @echo "Applying undervolting"
  @sudo intel-undervolt apply

set value: && apply
  #!/bin/bash
  conf_file="intel-undervolt.conf.{{value}}"

  if [ -f "${conf_file}" ]; then
      echo "Using existing configuration file ${conf_file}"
  else
      echo "Configuration file ${conf_file} does not exist. Creating..."
      just new {{value}}
      echo "Created and using new configuration file ${conf_file}"
  fi
  echo "Set undervolting to {{value}}"
  echo "Need root privileges to set undervolting to {{value}}"
  sudo cp ${conf_file} /etc/intel-undervolt.conf
  echo "Set undervolting to {{value}}"

new value:
  @sed 's/\$value\$/{{value}}/g' intel-undervolt.conf.template > intel-undervolt.conf.{{value}}

list:
  @echo "Available undervolts:"
  @ls -1 | grep -E "conf.[-0-9]+$" | sed -r 's/.*conf\.//' | sed 's/^/\t/'