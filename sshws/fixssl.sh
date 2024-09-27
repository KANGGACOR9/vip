#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
tyblue='\e[1;36m'
NC='\e[0m'
domain=$(cat /etc/xray/domain)
echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│           FIX SC BY NEWBIE STORE         │${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
echo ""
echo -e "[ ${green}INFO${NC} ] Checking... "
sudo apt install -y haproxy=2.0.*
sleep 0.5
echo -e "[ ${green}INFO$NC ] Setting Update Konfigurasi SSL"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/KANGGACOR9/vip/main/menu/running.sh" && chmod +x /usr/bin/running
wget -O /etc/nginx/conf.d/xray.conf "https://raw.githubusercontent.com/kanggacor9/vip/main/install/xray.conf"
wget -O /etc/haproxy/haproxy.cfg "https://raw.githubusercontent.com/kanggacor9/vip/main/install/haproxy.cfg"
sed -i 's/xxx/$domain/' /etc/nginx/conf.d/xray.conf
sed -i 's/xxx/$domain/' /etc/haproxy/haproxy.cfg
wget -q https://raw.githubusercontent.com/kanggacor9/vip/main/install/ipserver && chmod ipserver && ./ipserver
systemctl restart nginx
systemctl restart haproxy
clear
sleep 0.5
echo -e "[ ${green}INFO$NC ] Konfigurasi telah Diperbaiki!"
clear
echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│           FIX SC BY NEWBIE STORE         │${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
echo ""
echo -e "${tyblue}┌──────────────────────────────────────────┐${NC}"
echo -e "${tyblue}│               Newbie Store               │${NC}"
echo -e "${tyblue}│         Perbaikan Script Server          │${NC}"
echo -e "${tyblue}│        Aman, Cepat dan Terpercaya        │${NC}"
echo -e "${tyblue}│    Hub: https://wa.me/+6285184823708     │${NC}"
echo -e "${tyblue}│    Hub: https://t.me/Newbie_Store24      │${NC}"
echo -e "${tyblue}│                                          │${NC}"
echo -e "${tyblue}│Terimakasih Telah Menggunakan Layanan Kami│${NC}"
echo -e "${tyblue}└──────────────────────────────────────────┘${NC}"
rm fixssl.sh
read -p "Press [ Enter ]  TO menu"
menu
