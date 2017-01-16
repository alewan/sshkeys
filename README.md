# sshkeys 
Very basic code (in bash) to help with generating ssh keys for ssh keypair authentication 

Instructions:
1) Run ssh_genkey.sh on the local computer. You can choose whether or not to put a password on the keys (if not then just press enter twice). 
2) Run ssh_addkey.sh on the remote computer. Provide the script with the public key from Step 1.
3) You can now use ssh/sftp/scp to access the remote without providing a password for authentication.
