# Add your ssh key to the vagrant box

[[ -z $(ssh-add -L | grep $key_file) ]] && ssh-add $key_file