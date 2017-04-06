#!/bin/bash

echo "This script will let you add a public key to authorize for remote login"

#Checking for .ssh dir (creating it if it does not exist)
if [ -d ~/.ssh ];
	then
		echo ".ssh directory exists already"
 	else
		echo ".ssh directory does not exist. Creating one for you."
		mkdir ~/.ssh
fi

#Checking for authorized_keys file (creating it if it does not exist)
if [ -e ~/.ssh/authorized_keys ];
        then
                echo "Authorized keys file exists already"
        else
                echo "Authorized keys file does not exist. Creating one for you."
                touch ~/.ssh/authorized_keys
fi

#Asking user for public key and adding it to the list of authorized keys
printf "Provide public key: "
read pubkey
echo "Adding provided key..."
echo $pubkey >> ~/.ssh/authorized_keys
echo "Done"
