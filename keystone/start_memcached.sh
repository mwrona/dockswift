#!/bin/bash

echo "Starting memcached..."
/usr/bin/memcached -u memcache -m 128 -p 11211 -l 127.0.0.1
