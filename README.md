# sshkeys 
Basic code to help with generating ssh keys for ssh keypair authentication 

Instructions:
1) Run ssh_genkey.sh locally. You can choose whether or not to put a password on the keys (if not then just press enter twice). 
2) Run ssh_addkey.sh on the remote. Provide the script with the public key from Step 1.
3) You're done! You can now access the remote (with ssh/sftp/scp) without providing a password for authentication.
