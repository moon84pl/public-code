#! /bin/bash

#####VARIABLES#######

#########INSTALLER########
ISINTALLED=`ls /usr/local/bin | grep vbox-cli-manager.sh | wc -l`
USERINSTALLATIONANSWER="n"
BLOCK_INSTALLER="0" #You can block installer by changing this value to 1 or any other digit
#########/INSTALLER#######

#########INTERFACE########

#########/INTERFACE#######

#####/VARIABLES######
echo -e "\e[1m\e[31m"
cat << EOF



        ############################VBOX-CLI-MANAGER###############################
        ###########################################################################
        ##                                                                       ##
        ## This program is free software; you can redistribute it and/or modify  ##
        ## it under the terms of the GNU General Public License as published by  ##
        ## the Free Software Foundation; either version 2 of the License, or     ##
        ## (at your option) any later version.                                   ##
        ##                                                                       ##
        ## This program is distributed in the hope that it will be useful,       ##
        ## but WITHOUT ANY WARRANTY; without even the implied warranty of        ##
        ## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         ##
        ## GNU General Public License for more details.                          ##
        ##                                                                       ##
        ## You should have received a copy of the GNU General Public License     ##
        ## along with this program; if not, write to the Free Software           ##
        ## Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,            ##
        ## MA 02110-1301, USA.                                                   ##
        ##                                                                       ##
        ##                                                                       ##
        ###########################################################################
        ###########################################################################



EOF
echo -e "\e[0m"

echo "Hit enter"
read

clear


#########INSTALLER##################################################################
if [[ $BLOCK_INSTALLER -eq "0" ]]
    then
    if [[ $ISINTALLED -ne "1" ]]
        then
           echo "Do you want to have it installed in /usr/local/bin ? Y or N"
           read USERINSTALLATIONANSWER
           if [[ $USERINSTALLATIONANSWER != "y" ]]
               then
                  echo "Ok"
           else
              echo "If you are not a root user sudo will be used sudo"
              sudo cp -av ./vbox-cli-manager.sh /usr/local/bin
           fi
    fi
fi
#########/INSTALLER##################################################################

echo -e "\e[1m\e[31m"
cat << EOF
1. Clone virtual machine from template (Cloning)
2. List running virtual machines in this system
3. List registered virtual machines
4. List internal networks
5. List groups
EOF
echo -e "\e[0m"
read MAINMENU

   case $MAINMENU in
   
       1)
         echo "Clone virtual machine"
         vboxmanage list vms | grep -i template | cut -f1 -d " " | tr -d '"'
         echo -n "Paste name of template: "
         read VMTEMPLATE
         echo $VMTEMPLATE
         echo "1. Single clone"
         echo "2. Multiple clones"
         read CREATORMENU1
         case $CREATORMENU1 in
              1)
                 echo "1. Single virtual machine"
                      echo "Set name for new virtual machine"
                      read VMNAME
                      echo $VMNAME
              ;;

              2)
              
              ;;
         
       2)
         echo "Running virtual machines" 
         vboxmanage list runningvms
       ;;

       3)
         echo "Registered virtual machines without templates"
         vboxmanage list vms | grep -v template
       ;
   
       *) 
         echo "Exit"
       ;;
   esac


