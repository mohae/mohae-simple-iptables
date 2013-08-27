# Allow established, even if it violates other rules
# chain: system

simple_iptables_rule 'system' do
  rule "-m conntrack --ctstate ESTABLISHED,RELATED"
  jump "ACCEPT"
end 
