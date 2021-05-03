#! /bin/bash

#####VARIABLES#######
ISINTALLED=`ls /usr/local/bin | grep vbox-cli-manager.sh | wc -l`
USERINSTALLATIONANSWER="n"
BLOCK_INSTALLER="0" #You can block installer by changing this value to 1 or any other digit
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
1. Create single virtual machine from template (Cloning)
2. List running virtual machines in this system
3. 

EOF
echo -e "\e[0m"


