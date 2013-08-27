# recipe for configuring SSH related firewall rules
# Allow SSH

# Limit number of simultaneous connections
simple_iptables_rule "system" do
  rule "-p tcp --syn --dport 22"
  jump "ACCEPT"
end


