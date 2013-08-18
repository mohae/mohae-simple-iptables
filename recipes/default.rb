#
# Cookbook Name:: mohae-simple-iptables
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "simple-iptables"
include_recipe "mohae-simple-iptables::drop_all"
include_recipe "mohae-simple-iptables::ssh"
