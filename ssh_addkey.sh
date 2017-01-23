#!/bin/bash
echo "This program will let you add a public key to authorize for ssh logins"

#Check for .ssh dir (create if does not exist)
if [ -d ~/.ssh ];
	then
		echo ".ssh directory exists already"
 	else
		echo ".ssh directory does not exist. Creating one for you."
		mkdir ~/.ssh
fi
#Check for authorizedkeys file (create if does not exist)
if [ -e ~/.ssh/authorized_keys ];
        then
                echo "Authorized keys file exists already"
        else
                echo "Authorized keys file does not exist. Creating one for you."
                touch ~/.ssh/authorized_keys
fi

printf "Provide public key: "
read pubkey
echo "Adding provided key..."
echo $pubkey >> ~/.ssh/authorized_keys
echo "Done"
