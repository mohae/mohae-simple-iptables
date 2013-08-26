
# INBOUND rule new connection
simple_iptables_rule "system" do
  rule "iptables -A INPUT -i eth0 -p tcp --dport 22 -m state --state NEW,ESTABLISHED"
  jump "ACCEPT"
end

# INBOUND rule established
simple_iptables_rule "system" do
  rule "iptables -A OUTPUT -o eth0 -p tcp --sport 22 -m state --state ESTABLISHED -"
  jump "ACCEPT"
end
