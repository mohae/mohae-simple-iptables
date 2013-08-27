# allow loopback
# chain: system

simple_iptables_rule "system" do
  rule "--in-interface lo"
  jump "ACCEPT"
end
