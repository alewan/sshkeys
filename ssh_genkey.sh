#!/bin/bash
#Checking if a keypair already exists (creating one if it does not exist)
if [ -e ~/.ssh/id_rsa.pub ];
        then
                echo "Public key exists already..."
        else
                echo "Generating keys..."
		echo "" | ssh-keygen
fi

#Printing the public key for the user
printf "Public key is: "
cat ~/.ssh/id_rsa.pub
