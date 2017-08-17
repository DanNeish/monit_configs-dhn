name              "monit_configs-dhn"
maintainer        "Daniel Neish"
maintainer_email  "daniel.neish@gmail.com"
description       "Monit configs for server components"
version           "0.2.0"

recipe "monit_configs-dhn::memcached", "Monit config for memcached"
recipe "monit_configs-dhn::mongo", "Monit config for mongodb"
recipe "monit_configs-dhn::mysql-server", "Monit config for mysql server"
recipe "monit_configs-dhn::nginx", "Monit config for nginx"
recipe "monit_configs-dhn::postgres-server", "Monit config for postgres server"
recipe "monit_configs-dhn::redis-server", "Monit config for redis server"

supports "ubuntu"
