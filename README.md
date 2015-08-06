dockswift
=========

### Dockerfile ###

One dockerfile working for keystone/swift/horizon and compatible with Object Storage Clients like Cyberduck.
To run the container, provide your ip address as an environment variable (ex : localhost or boot2docker ip)

Here is a sample command to run :

     docker run -P -p 80:80 -p 8080:8080 -p 5000:5000 -p 35357:35357 -d -e INITIALIZE=yes -e IPADDRESS=192.168.59.103 --name swift swift

#### Ports ####

80:80 - To connect to the horizon dashboard

5000:5000 - To connect to keystone using external clients

35357 - To connect to keystone using admin url

8080:8080 - To access to Object Storage after Keystone authentication

#### Volumes ####

/etc/mysql - configurations for mysql.

/var/lib/mysql - The actual database. This will make the openstack database persistant between reboots.

/etc/keystone - Configuration for keystone.

/etc/openstack-dashboard - Configuration for django.

/srv - Volume for Swift Object Storage.

#### Environment Variables ####

INITIALIZE=yes This sets executes the sql statements in /usr/local/etc
IPADDRESS=localhost or IPADDRESS=192.168.59.103 (boot2docker ip) This sets the endpoint of Swift for Keystone. It allows the use of external Swift Clients using Keystone

#### Cyberduck ####

To access to your Storage through Cyberduck, you can download the preconfigured settings here :

   https://svn.cyberduck.io/trunk/profiles/Openstack%20Swift%20(HTTP).cyberduckprofile

Then configure :
     Server : (your ip address)
     Port : 5000
     Username : (tenant name):(user name)
     Password : (user password)