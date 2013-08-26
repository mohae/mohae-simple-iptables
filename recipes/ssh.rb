# recipe for configuring SSH related firewall rules
# Allow SSH

# Limit number of simultaneous connections
simple_iptables_rule "system" do
  rule "iptables -A INPUT -p tcp --syn --dport 22 -m connlimit --connlimit-above 5"
  jump "REJECT"
end

#OUTBOUND ssh
simple_iptables_rule "system" do
  rule"iptables -A OUTPUT -o eth0 -p tcp --dport 22 -m state --state"    
  jump "ACCEPT"
end

simple_iptables_rule "system" do
  rule "iptables -A INPUT -i eth0 -p tcp --sport 22 -m state --state ESTABLISHED"
  jump "ACCEPT"
end

