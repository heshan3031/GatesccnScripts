#!/bin/bash
# Si llegaste hasta aqui, No Reproduscas Copias de esta mrd puto 
# ERES ADMIRABLE, gatesccn
killall apt apt-get &> /dev/null
dom='base64 -d'
cd $HOME
rm -f instala.* > /dev/null
[[ $(dpkg --get-selections|grep -w "gawk"|head -1) ]] || apt-get install gawk -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "mlocate"|head -1) ]] || apt-get install mlocate -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "curl"|head -1) ]] || apt-get install curl -y &>/dev/null
rm $(pwd)/$0 &> /dev/null
msg () {
BRAN='\033[1;37m' && VERMELHO='\e[31m' && VERDE='\e[32m' && AMARELO='\e[33m'
AZUL='\e[34m' && MAGENTA='\e[35m' && MAG='\033[1;36m' &&NEGRITO='\e[1m' && SEMCOR='\e[0m'
 case $1 in
  -ne)cor="${VERMELHO}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -ama)cor="${AMARELO}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -verm)cor="${AMARELO}${NEGRITO}[!] ${VERMELHO}" && echo -e "${cor}${2}${SEMCOR}";;
  -azu)cor="${MAG}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -verd)cor="${VERDE}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -bra)cor="${BRAN}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -bar2)cor="${AZUL}${NEGRITO}◈ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ◈" && echo -e "${cor}${SEMCOR}";;
  -bar)cor="${AZUL}${NEGRITO}◈ ━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━ ◈" && echo -e "${cor}${SEMCOR}";;
 esac
}
fun_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
}

fun_install () {
echo -e "${cor[1]}◈ ━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━ ◈"
echo -e ""
echo -e "${cor[2]}\n\033[1;37m  $(source trans -b pt:${id} "Script Patrocinado por: @GATESCCN - El Mandarin Sniff")" | pv -qL 15
#echo -e "${cor[2]}\n\033[1;37m  Reseller de Key: $(cat /etc/adm-lite/menu_credito)"
echo -e ""
echo -e "${cor[1]}◈ ━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━ ◈"
echo -e "${cor[5]} $(source trans -b pt:${id} "INSTALADOR 🐲 New BolScripts💥CN 2022 🐲 ")" 
echo -e "${cor[2]}◈ ━━━━━━━━━━━━━ ⸙ - ⸙ ━━━━━━━━━━━━━ ◈ "
echo -e "${cor[3]} $(source trans -b pt:${id} "Iniciando Instalacion del ADM...")"
echo -e "${cor[3]} $(source trans -b pt:${id} "Script V1.0a Sujeto a Cambios Constantes")"
echo -e "${cor[1]} $(source trans -b pt:${id} "MEJORANDO PAQUETES DE CONTROL Y CONEXIONES")"
echo -e "${cor[1]}◈ ━━━━━━━━━━━━━━━ ⸙ - ⸙ ━━━━━━━━━━━━━━━ ◈  "
  echo -ne "${cor[4]}"
  fun_bar
  valid_fun
   msg -bar2
   cd $HOME
   [[ -e $HOME/lista-arq ]] && rm $HOME/lista-arq  
   [[ -e $HOME/lista ]] && rm $HOME/lista   
   [[ -d ${SCPinstal} ]] && rm -rf ${SCPinstal} 
   install_fim
}

fecha=`date +"%d-%m-%y"`;
dom='base64 -d'
SCPdir="/etc/adm-lite"
SCPinstal="$HOME/install"
SCPidioma="${SCPdir}"
SCPusr="${SCPdir}"
SCPfrm="${SCPdir}"
SCPinst="${SCPdir}"
## root check
if ! [ $(id -u) = 0 ]; then
clear
		echo ""
		msg -bar #echo "◈ ━━━━━━━━━━━━━━━ ⸙ - ⸙ ━━━━━━━━━━━━━━━ ◈ "
		echo " 	           	⛑⛑⛑     Error Fatal!! x000e1  ⛑⛑⛑"
		msg -bar #echo "◈ ━━━━━━━━━━━━━━━ ⸙ - ⸙ ━━━━━━━━━━━━━━━ ◈ "
		echo "$(source trans -b pt:${id} "                    ✠ Este script debe ejecutarse como root! ✠")"

		echo "$(source trans -b pt:${id} "                              Como Solucionarlo ")"
		
		echo "  $(source trans -b pt:${id} "                          Ejecute el script así:")"
		echo "                               ⇘     ⇙ "
		echo "                                   sudo -i "
		echo "                                   sudo su"
		echo "   $(source trans -b pt:${id} "                              Retornando . . .")"
		echo $(date)
		msg -bar
		exit
fi
update_pak () {
dpkg --configure -a
apt install jq -y -qq --silent > /dev/null 2>&1
apt install pv -y -qq --silent > /dev/null 2>&1
wget -O /bin/trans https://www.dropbox.com/s/ltej1zv9nw4cl3n/trans.sh -o /dev/null 2>&1
unset Key > /dev/null 2>&1 && echo -e "\033[1;31m- \033[1;32mExito!" || echo -e "\033[1;31m- \033[1;31mFallo"
apt-get install software-properties-common -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
apt-add-repository universe -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
echo -ne " \033[1;31m[ ! ] Install SysBanner"
apt install sysvbanner -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
echo -ne " \033[1;31m[ ! ] Install Lolcat   "
[[ $(dpkg --get-selections|grep -w "lolcat"|head -1) ]] || apt-get install lolcat -y &>/dev/null
[[ $(dpkg --get-selections|grep -w "lolcat"|head -1) ]] || ESTATUS=`echo -e "\033[91mFALLO DE INSTALACION"` &>/dev/null
[[ $(dpkg --get-selections|grep -w "lolcat"|head -1) ]] && ESTATUS=`echo -e "\033[92mINSTALADO"` &>/dev/null
echo -e "\033[97m  # apt-get install lolcat................... $ESTATUS "
echo -ne " \033[1;31m[ ! ] Install Figlet   "
apt install figlet -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
echo -ne " \033[1;31m[ ! ] Install Cowsay   "
apt install cowsay -y > /dev/null 2>&1 && echo -e "\033[1;32m [ EXITO ]" || echo -e "\033[1;31m [FAIL]"
sleep 2s
return
}

fun_bar () {
comando[0]="$1"
comando[1]="$2"
 (
[[ -e $HOME/fim ]] && rm $HOME/fim
${comando[0]} -y > /dev/null 2>&1
${comando[1]} -y > /dev/null 2>&1
touch $HOME/fim
 ) > /dev/null 2>&1 &
echo -ne "\033[1;33m ["
while true; do
   for((i=0; i<18; i++)); do
   echo -ne "\033[1;31m##"
   sleep 0.1s
   done
   [[ -e $HOME/fim ]] && rm $HOME/fim && break
   echo -e "\033[1;33m]"
   sleep 1s
   tput cuu1
   tput dl1
   echo -ne "\033[1;33m ["
done
echo -e "\033[1;33m]\033[1;31m -\033[1;32m 100%\033[1;37m"
}

fun_bar 'update_pak'
echo -e " LOLCAT - FIGLET - COWSAY - TOILET INSTALADOS CORRECTAMENTE "| lolcat
function_verify () {
  echo "verify" > $(echo -e $(echo 2f62696e2f766572696679737973|sed 's/../\\x&/g;s/$/ /'))
}

instalar_fun () {
cd /etc/adm-lite && bash cabecalho --instalar
}

install_fim () {
cd /etc/adm-lite && bash cabecalho --fims
#echo -e "$Key" > /bin/ejecutar/key.fix > /dev/null 2>&1 && echo -e "\033[1;32m [ Key Restaurada del Generador Exitosamente ]" || echo -e "\033[1;31m [ Deleting Key ]"
echo -e "$pkrm" > /bin/ejecutar/key.fix > /dev/null  && echo -e "\033[1;32m [ Key Restaurada del Generador Exitosamente ]" || echo -e "\033[1;31m [ Deleting Key ]"

}
ofus () {
unset txtofus
number=$(expr length $1)
for((i=1; i<$number+1; i++)); do
txt[$i]=$(echo "$1" | cut -b $i)
case ${txt[$i]} in
".")txt[$i]="x";;
"x")txt[$i]=".";;
"1")txt[$i]="@";;
"@")txt[$i]="1";;
"2")txt[$i]="?";;
"?")txt[$i]="2";;
"4")txt[$i]="%";;
"%")txt[$i]="4";;
"/")txt[$i]="K";;
"K")txt[$i]="/";;
esac
txtofus+="${txt[$i]}"
done
echo "$txtofus" | rev
}
verificar_arq () {
echo $1 >> $HOME/log.txt
#cd ${SCPinstal}
}
fun_ip

valid_fun () {
[[ -d /etc/adm-lite ]] && rm -rf /etc/adm-lite
[[ -d /bin/ejecutar ]] && rm -rf /bin/ejecutar
mkdir /etc/adm-lite && cd /etc/adm-lite
echo "cd /etc/adm-lite && bash ./menu" > /bin/menu
echo "cd /etc/adm-lite && bash ./menu" > /bin/gates
echo "cd /etc/adm-lite && bash ./menu" > /bin/adm
chmod +x /bin/menu
chmod +x /bin/gates
chmod +x /bin/adm
#echo "cd /etc/adm-lite && bash ./menu" > /usr/bin/menu && chmod +x /usr/bin/menu
#echo "cd /etc/adm-lite && bash ./menu" > /usr/bin/gates && chmod +x /usr/bin/gates
#echo "cd /etc/adm-lite && bash ./menu" > /usr/bin/adm && chmod +x /usr/bin/adm
mv -f ${SCPinstal}/* /etc/adm-lite/
cd $HOME
echo -e "${cor[3]} $(source trans -b pt:${id} "CARGANDO PAQUETES Y SERVICIOS DE LA KEY")" 
echo -e "${cor[1]}◈ ━━━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━━━ ◈"
chmod +x /etc/adm-lite/*
instalar_fun
function_verify
sleep 1s 
}
invalid_key () {
echo -e ' '
msg -bar && msg -verm "Key Failed! " && msg -bar
[[ -e $HOME/lista-arq ]] && rm $HOME/lista-arq
cd $HOME
[[ -e $HOME/install ]] && rm -rf $HOME/install
[[ -d $HOME/chumogh ]] && rm -rf $HOME/chumogh
[[ -d /etc/adm-lite ]] && rm -rf /etc/adm-lite
[[ -d $HOME/chumogh ]] && rm -rf $HOME/chumogh
[[ -e /bin/menu ]] && rm /bin/menu
[[ -e $HOME/chumogh ]] && rm -rf $HOME/chumogh
[[ -e $HOME/log.txt ]] && rm -f $HOME/log.txt
[[ -e /bin/troj.sh ]] && rm -f /bin/troj.sh
[[ -e /bin/v2r.sh ]] && rm -f /bin/v2r.sh
[[ -e /bin/clash.sh ]] && rm -f /bin/clash.sh
rm -f instala.*  > /dev/null
rm -f /bin/cgh > /dev/null
rm -rf /bin/ejecutar > /dev/null
unset Key > /dev/null 2>&1 && echo -e "\033[1;31m- \033[1;32mExito!" || echo -e "\033[1;31m- \033[1;31mFallo" > error.log
cowsay  "☆gatesccn☆ $(source trans -b pt:${id} "🐲 New BolScripts💥CN 2022 🐲 Te agradece por preferirnos, pero desafortunadamente tu Key es INVALIDA")" > error.log
echo "$(source trans -b pt:${id} "Key Invalida, Contacta con el Desarrolador")" >> error.log
echo "$(source trans -b pt:${id} "  ● Compra Keys al +59162069439 ")" >> error.log
echo -e ' t.me/gatesccn  - @gatesccn' >> error.log
cat error.log | lolcat
exit
}

while [[ ! $Key ]]; do
clear
cowsay -f stegosaurus "BIENVENIDO Y GRACIAS POR UTILIZAR - - - - - - - -★ 🐲 New BolScripts💥CN 2022 🐲 "| lolcat
export PATH=$PATH:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/sbin:/bin:/usr/games;
echo -e "\033[1;32m ◈ ━━━━━━━━━━━━ 🪐 - 🪐 ━━━━━━━━━━━━━ ◈"
msg -ne "Key de Instalacion: " && read Key
tput cuu1 && tput dl1
done
msg -ne "Key: "
cd $HOME
wget -O $HOME/lista-arq $(ofus "$Key")/$IP > /dev/null 2>&1 && { 
echo -e "\033[1;34m [ \033[1;32m VERIFICANDO KEY\033[1;34m ]" | pv -qL 15 && pkrm=$(ofus "$Key")
} || {
   invalid_key
}
IP=$(ofus "$Key" | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}') && echo "$IP" > /usr/bin/vendor_code
sleep 2s
updatedb
if [[ -e $HOME/lista-arq ]] && [[ ! $(cat $HOME/lista-arq|grep "KEY INVALIDA!") ]]; then
cor[1]="\033[1;36m"
cor[2]="\033[1;33m"
cor[3]="\033[1;31m"
cor[5]="\033[1;32m"
cor[4]="\033[0m"
cd $HOME
clear
locale-gen en_US.UTF-8 > /dev/null 2>&1
update-locale LANG=en_US.UTF-8 > /dev/null 2>&1
apt-get install gawk -y > /dev/null 2>&1
wget -O /bin/trans https://raw.githubusercontent.com/Gatesccn/gatesccn-gamail.com/master/trans -o /dev/null 2>&1
#https://www.dropbox.com/s/78n0certotqrix9/trans.sh -o /dev/null 2>&1
chmod 777 /bin/*
#https://raw.githubusercontent.com/Gatesccn/gatesccn-gamail.com/master/trans
cowsay -f ghostbusters "    ESCOJE TU IDIOMA DE PRERENCIA" | lolcat
echo -e "${cor[1]}==================================" 
echo -e "${cor[2]}       (Default : Español)\n${cor[1]}==================================\n\n${cor[2]}   [1]-Português : [2]-English\n   [3]-Español   : [4]-FRANCES\n"
#echo -e "${cor[2]}       (Default : Español)\n${cor[1]}==================================\n${cor[2]}   [1]-BRASILEÑO : [2]-INGLES\n   [3]-ESPAÑOL   : [4]-FRANCES\n   [5]-ITALIANO  : [6]-CHINO"
echo -e "${cor[1]}==================================" 
echo -ne " ESCOJE : "; read lang
case $lang in
1)
id="pt"
;;
2)
id="en"
;;
3)
id="es"
;;
4)
id="fr"
;;
*)
id="es"
;;
esac
   REQUEST=$(ofus "$Key"|cut -d'/' -f2)
   [[ ! -d ${SCPinstal} ]] && mkdir ${SCPinstal}
   wget -O lista https://www.dropbox.com/s/bg7syvld7fl0ryx/lista%20editada in $(cat $HOME/lista-arq); do
   wget -O ${SCPinstal}/${arqx} ${IP}:81/${REQUEST}/${arqx} > /dev/null 2>&1 && verificar_arq "${arqx}"  
   done
[[ $(cat $HOME/log.txt | wc -l) = "34" ]] && {

 echo -e "\033[1;31m [ KEY Verificada Exitosamente ]" | pv -qL 15 && fun_install 
 rm -f $HOME/log.txt
} || { 
echo -e "\033[1;31m [ARCHIVOS DE KEY INCOMPLETOS, REINTENTA NUEVAMENTE]" | pv -qL 15 && invalid_key 
}
   else
invalid_key
killall apt apt-get &> /dev/null
fi
