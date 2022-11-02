#!/bin/bash

# Update sources and upgrade base box
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y -o DPkg::options::="--force-confdef" -o DPkg::options::="--force-confold" upgrade
