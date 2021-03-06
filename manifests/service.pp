# == Class proxysql::service
#
# This class is meant to be called from proxysql.
# It ensure the service is running.
#
class proxysql::service {

  service { $::proxysql::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => false,
    provider   => 'base',
    status     => '/etc/init.d/proxysql status',
    start      => '/usr/bin/proxysql --reload',
    stop       => '/etc/init.d/proxysql stop'
  }
}
