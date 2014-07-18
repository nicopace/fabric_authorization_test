vagrant up --provider=docker
IP=`vagrant ssh-config | grep HostName | awk '{print $2}'`
USER=`vagrant ssh-config | grep User\  | awk '{print $2}'`
RSA_KEY=`cat ~/.ssh/id_rsa.pub`
vagrant ssh -c "echo $RSA_KEY >> ~/.ssh/authorized_keys"
fab -u $USER -H $IP run_test
