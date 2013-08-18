# reject all packets--rebuld rules from there
# this means only explicitely defined things are allowed
simple_iptables_policy "INPUT" do
  policy "DROP"
end

simple_iptables_policy "OUTPUT" do
  policy "DROP"
end

simple_iptables_policy "FORWARD" do
  policy "DROP"
end
