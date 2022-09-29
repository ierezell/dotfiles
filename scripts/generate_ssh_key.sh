SSHFILE=/home/$USER/.ssh/id_ed25519
if [ ! -f "$SSHFILE" ] ; then
    echo "Creating ssh key to $SSHFILE" 
    ssh-keygen -t ed25519 -f $SSHFILE -q -N ""
fi
