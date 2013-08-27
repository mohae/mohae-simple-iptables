#
# Cookbook Name:: mohae-simple-iptables
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "simple_iptables"

#reject packets unless explicitly allowed
simple_iptables_policy "INPUT" do
  policy "DROP"
end

#set the rules
include_recipe "mohae-simple-iptables::loopback"
include_recipe "mohae-simple-iptables::allow_established"
include_recipe "mohae-simple-iptables::ssh"
include_recipe "mohae-simple-iptables::log_denies"
