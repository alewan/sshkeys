#!/bin/bash
if [ -e ~/.ssh/id_rsa.pub ];
        then
                echo "Public key exists already..."
        else
                echo "Generating keys..."
		echo "" | ssh-keygen
fi

printf "Public key is: "
cat ~/.ssh/id_rsa.pub
