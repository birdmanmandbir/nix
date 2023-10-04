ip=$(cat /etc/resolv.conf | grep nameserver | cut -d ' ' -f 2)
proxy="http://${ip}:7890"
mkdir /run/systemd/system/nix-daemon.service.d/
cat << EOF >/run/systemd/system/nix-daemon.service.d/override.conf  
[Service]
Environment="http_proxy=${proxy}"
Environment="https_proxy=${proxy}"
Environment="all_proxy=${proxy}"
EOF
systemctl daemon-reload
systemctl restart nix-daemon
