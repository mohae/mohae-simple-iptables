#
# Cookbook Name:: mohae-simple-iptables
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "simple_iptables"
include_recipe "mohae-simple-iptables::drop_all"
#include_recipe "mohae-simple-iptables::default_accept"
#include_recipe "mohae-simple-iptables::ssh"
