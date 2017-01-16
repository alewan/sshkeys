#!/bin/bash
if [ -e ~/.ssh/id_rsa.pub ];
        then
                echo "Public key exists already..."
        else
                echo "Generating keys..."
		echo "">_ssh_genkey_temp
		ssh-keygen<_ssh_genkey_temp
		rm _ssh_genkey_temp
fi

printf "Public key is: "
cat ~/.ssh/id_rsa.pub
