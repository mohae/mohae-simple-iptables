# Allow HTTP and HTTPS cuz they go together like bread and butter
simple_iptables_rule "http" do
  rule [ "-p tcp --dport 80"
       , "-p tcp --dport 443" ]
  jump "ACCEPT"
end
