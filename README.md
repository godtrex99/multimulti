# MULTIPORT - SSH / SSL / XRAY (WEBSOCKET)
apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && reboot

# SCRIPT
rm -f setup.sh && apt update && apt upgrade -y && update-grub && sleep 2 && apt-get update -y && apt-get upgrade && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/godtrex99/multimulti/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh



# TESTED ON OS 
- DEBIAN 10

# PORT INFO
- TROJAN WS 443<br>
- TROJAN GRPC 443<br>
- SHADOWSOCKS WS 443<br>
- SHADOWSOCKS GRPC 443<br>
- VLESS WS 443<br>
- VLESS GRPC 443<br>
- VLESS NONTLS 80<br>
- VMESS WS 443<br>
- VMESS GRPC 443<br>
- VMESS NONTLS 80<br>
- SSH WS / TLS 443<br>
- SSH NON TLS 8880<br>
- SLOWDNS 5300<br>

# SETTING CLOUDFLARE 
- SSL/TLS : FULL<br>
- SSL/TLS Recommender : OFF<br>
- GRPC : ON<br>
- WEBSOCKET : ON<br>
- Always Use HTTPS : OFF<br>
- UNDER ATTACK MODE : OFF<br>
