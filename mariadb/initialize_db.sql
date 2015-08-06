CREATE DATABASE IF NOT EXISTS phpmyadmin;
CREATE DATABASE IF NOT EXISTS keystone;
CREATE DATABASE IF NOT EXISTS glance CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS nova;
CREATE DATABASE IF NOT EXISTS neutron;
CREATE DATABASE IF NOT EXISTS cinder;
CREATE DATABASE IF NOT EXISTS heat;

GRANT SELECT, INSERT, DELETE, UPDATE, ALTER ON phpmyadmin.* TO 'pma'@'localhost' IDENTIFIED BY 'openstack';
GRANT SELECT, INSERT, DELETE, UPDATE, ALTER ON phpmyadmin.* TO 'pma'@'%' IDENTIFIED BY 'openstack';

GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'localhost' IDENTIFIED BY 'openstack';
GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'%' IDENTIFIED BY 'openstack';

GRANT ALL PRIVILEGES ON glance.* TO 'glance'@'localhost' IDENTIFIED BY 'openstack';
GRANT ALL PRIVILEGES ON glance.* TO 'glance'@'%' IDENTIFIED BY 'openstack';

GRANT ALL PRIVILEGES ON nova.* TO 'nova'@'localhost' IDENTIFIED BY 'openstack';
GRANT ALL PRIVILEGES ON nova.* TO 'nova'@'%' IDENTIFIED BY 'openstack';

GRANT ALL PRIVILEGES ON neutron.* TO 'neutron'@'localhost' IDENTIFIED BY 'openstack';
GRANT ALL PRIVILEGES ON neutron.* TO 'neutron'@'%' IDENTIFIED BY 'openstack';

GRANT ALL PRIVILEGES ON cinder.* TO 'cinder'@'localhost' IDENTIFIED BY 'openstack';
GRANT ALL PRIVILEGES ON cinder.* TO 'cinder'@'%' IDENTIFIED BY 'openstack';

GRANT ALL PRIVILEGES ON heat.* TO 'heat'@'localhost' IDENTIFIED BY 'openstack';
GRANT ALL PRIVILEGES ON heat.* TO 'heat'@'%' IDENTIFIED BY 'openstack';
