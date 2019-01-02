#!/bin/bash

RENK1='\033[0;29m'	#yeşil
RENK2='\033[0;31m'	#kırmızı
RENK3='\033[0;36m'	#kırmızı
yanlis="
echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
echo -e "${RENK3}◄ ►                                                     ${RENK3}◄ ► \033[0m"
echo -e "${RENK3}◄ ►      ${RENK1}Yanlış tuşlama yapıldı, script kapatılıyor.    ${RENK3}◄ ► \033[0m"
echo -e "${RENK3}◄ ►                     ${RENK1}İyi günler                      ${RENK3}◄ ► \033[0m"
echo -e "${RENK3}◄ ►                                                     ${RENK3}◄ ►"
echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"

"


ana_secenek_teamspeak(){
clear
    echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
    echo -e "${RENK3}◄ ►   ${RENK1}Bu Script ${RENK2}TSMarketim${RENK1} Tarafından Kodlanmıştır.${RENK3}   ◄ ►"
    echo -e "${RENK3}◄ ►                 ${RENK2}Script by TSMarketim${RENK3}                    ◄ ►"                
    echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
	echo -e "${RENK3}◄ ►     ${RENK1}1) Durum Bilgisi${RENK3}                                ◄ ►"
	echo -e "${RENK3}◄ ►     ${RENK1}2) Başlat${RENK3}                                       ◄ ►"
	echo -e "${RENK3}◄ ►     ${RENK1}3) Durdur${RENK3}                                       ◄ ►"
	echo -e "${RENK3}◄ ►     ${RENK1}4) ServerQuery Şifresini Değiştir${RENK3}               ◄ ►"
	echo -e "${RENK3}◄ ►     ${RENK1}5) Yeniden Başlat${RENK3}                               ◄ ►"
	echo -e "${RENK3}◄ ►     ${RENK1}6) Serveri Sil${RENK3}                                  ◄ ►"
	echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
    echo -e "${RENK3}◄ ►     ${RENK1}Scriptten Çıkmak İçin ${RENK2}'CTRL-C'${RENK1} ye Basınız.${RENK3}      ◄ ►"
    echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►\nCevap:   ${RY}"
		read ts3
		case $ts3 in
		    1)
			clear
			cd server
			./ts3server_startscript.sh status
			;;
			2)
			clear
			cd server
			./ts3server_startscript.sh start
			;;
			3)
			clear
			cd server
			./ts3server_startscript.sh stop
			;;
			4)
			clear
			cd server
			./ts3server_startscript.sh stop
			sleep 0.1
			echo -e -n "\033[1;36mYeni Şifre: \033[0m"
			read sifredegis
			./ts3server_startscript.sh start serveradmin_password=$sifredegis
			echo -e "\033[1;32mServerQuery şifresi değiştirildi ~ $sifredegis\033[0m"
			;;
			5)
			clear
			cd server
			./ts3server_startscript.sh stop
			sleep 0.1
			./ts3server_startscript.sh start
			;;
		    6)
			clear
			cd server
			./ts3server_startscript.sh stop
			cd ..
			sleep 0.1
			rm -rf server
			;;
			0)
			clear
			;;
			*)
			clear
echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
echo -e "${RENK3}◄ ►                                                     ${RENK3}◄ ► \033[0m"
echo -e "${RENK3}◄ ►      ${RENK1}Yanlış tuşlama yapıldı, script kapatılıyor.    ${RENK3}◄ ► \033[0m"
echo -e "${RENK3}◄ ►                     ${RENK1}İyi günler                      ${RENK3}◄ ► \033[0m"
echo -e "${RENK3}◄ ►                                                     ${RENK3}◄ ►"
echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
exit
			;;		
		esac


}



ana_kurulum_teamspeak3_hostduzenle(){
grep -v '.*teamspeak.*' /etc/hosts > /etc/hosts_temporary
mv /etc/hosts_temporary /etc/hosts
grep -v '.*ocsp\.digicert.com.*' /etc/hosts > /etc/hosts_temporary
mv /etc/hosts_temporary /etc/hosts
nohup sed -i '1127.0.0.1       teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       accounting.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       backupaccounting.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ipcheck.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i# 127.0.0.1       blacklist.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       elasticbeanstalk.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       usertrust.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       symcb.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       thawte.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       reportpiracy-env.elasticbeanstalk.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       weblist.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       hardy.teamspeak.4players.de' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ocsp.digicert.com' /etc/hosts >/dev/null 2>&1
}


#--------------------------------------------------------------------------------------#



#--------------------------------------------------------------------------------------#

ana_kurulum_bilesenkur(){
sudo apt-get update -y >/dev/null 2>&1
sudo apt-get install wget -y >/dev/null 2>&1
sudo apt-get install curl -y >/dev/null 2>&1
sudo apt-get install nano -y >/dev/null 2>&1
sudo apt-get install x11vnc xinit xvfb libxcursor1 ca-certificates bzip2 -y >/dev/null 2>&1
sudo update-ca-certificates -y >/dev/null 2>&1
sudo apt-get install libglib2.0-0 -y >/dev/null 2>&1
sudo apt-get install screen -y >/dev/null 2>&1
apt-get install screen -y >/dev/null 2>&1
}

ana_kurulum_teamspeak3(){
sleep 1
    echo -e "${RENK2}-------------------------------------------------------${RY}"
	echo -e "${RENK1}Ana Bileşenler Kuruluyor...${RY}"
	sleep 1
	ana_kurulum_bilesenkur
	echo -e "${RENK1}Ana Bileşenler Kuruldu...${RY}"
	sleep 1
	echo -e "${RENK2}-------------------------------------------------------${RY}"
	echo -e "${RENK1}Teamspeak3 Server Dosyaları İndiriliyor...${RY}"
	sleep 1
	cd /root
	sleep 0.1
	ana_kurulum_teamspeak3_hostduzenle
	sleep 0.1
    wget --no-check-certificate https://www.respawned.org/nevarsaburda/pyrots/server.tar.bz2 >/dev/null 2>&1
	sleep 0.1
    tar xvf server.tar.bz2 >/dev/null 2>&1
	sleep 0.1
rm -rf server.tar.bz2
echo -e "${RENK1}Teamspeak3 Server Dosyaları İndirildi...${RY}"
sleep 1
echo -e "${RENK2}-------------------------------------------------------${RY}"
	echo -e "${RENK1}Teamspeak3 Server Başlatılıyor...${RY}"
	echo -e "${RENK2}-------------------------------------------------------${RY}${RENK1}"
	sleep 1
cd /root/server
sleep 0.1
chmod +x *
sleep 0.1
./AccountingServerEmulator-Linux
sleep 0.1
./ts3server_startscript.sh start	
sleep 0.1
}

clear
sleep 0.3
echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
echo -e "${RENK3}◄ ►   ${RENK1}Bu Script ${RENK2}TSMarketim${RENK1} Tarafından Kodlanmıştır.${RENK3}   ◄ ►"
echo -e "${RENK3}◄ ►                 ${RENK2}Script by TSMarketim${RENK3}                    ◄ ►"                
echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
	echo -e "${RENK3}◄ ►     ${RENK1}1) TeamSpeak 3 Kur${RENK3} - ${RENK2}3.0.13.8                   ${RENK3}◄ ►"
	echo -e "${RENK3}◄ ►     ${RENK1}2) TeamSpeak 3 Seçenekler${RENK3}                       ◄ ►"
	echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
    echo -e "${RENK3}◄ ►     ${RENK1}Scriptten Çıkmak İçin ${RENK2}'CTRL-C'${RENK1} ye Basınız.${RENK3}      ◄ ►"
    echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►\nCevap:   ${RY}"
read secenek

case $secenek in
 1)
ana_kurulum_teamspeak3
 ;;
 2)
ana_secenek_teamspeak
 ;;
 0)
 clear
 exit
echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
echo -e "${RENK3}◄ ►                                                     ${RENK3}◄ ► \033[0m"
echo -e "${RENK3}◄ ►      ${RENK1}Yanlış tuşlama yapıldı, script kapatılıyor.    ${RENK3}◄ ► \033[0m"
echo -e "${RENK3}◄ ►                     ${RENK1}İyi günler                      ${RENK3}◄ ► \033[0m"
echo -e "${RENK3}◄ ►                                                     ${RENK3}◄ ►"
echo -e "${RENK3}◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ► ◄ ►"
exit
;;

esac