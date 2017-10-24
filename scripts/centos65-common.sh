#!/bin/bash

# Update Centos65 with any patches but omit kernel patches
yum update -y --exclude=kernel

# Install tools
yum install -y nano git unzip screen nc telnet
