#!/bin/bash
# Proxy For WS
# ==========================================

clear
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
clear
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
NC='\e[0m'
echo "Installing SSH Websocket " | lolcat

cd
sleep 1
echo -e "[ ${green}INFO${NC} ] Downloading files... "
wget -qc -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/godtrex99/multimulti/main/websocket/dropbear-ws.py
wget -qc -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/godtrex99/multimulti/main/websocket/ws-stunnel

chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-stunnel

wget -qc -O /etc/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/godtrex99/multimulti/main/websocket/service-wsdropbear && chmod +x /etc/systemd/system/ws-dropbear.service

wget -qc -O /etc/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/godtrex99/multimulti/main/websocket/ws-stunnel.service && chmod +x /etc/systemd/system/ws-stunnel.service

echo -e " [INFO] Successfully"
sleep 1
systemctl daemon-reload
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service

