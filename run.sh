#!/bin/bash

PLAYBOOK_FILE="install-docker.yml"
EXTRA_ARGS="--syntax-check"

if [ -z "$1" ]
then
    inputPilihan=""
else
    inputPilihan=($0)
fi

exit_when_erorr() {
    exitCode=$1
    if [ $exitCode -ne 0 ];
    then
        >&2 echo "command failed with exit code ${exitCode}."
        exit $exitCode
    fi    

}

#Install Docker
runAnsble() {
    ansible-playbook $EXTRA_ARGS $PLAYBOOK_FILE
    ansible-playbook $PLAYBOOK_FILE
    exit_when_erorr $?
}

if [ -z "$inputPilihan" ]
then
    printf \ 
    'Masukan pilihan anda!
(install docker)    => Install Docker
(deploy stack)      => Deploy Stack
(all)               => Semua

>  '
    read inputPilihan
fi    

installDocker=0
installStack=0

inputPilihan=' ' read -a arr <<< "$inputPilihan"

for input in ${inputPilihan[0]}
do
    if [ $input = 'install docker' ]
    then
        installDocker=1
    elif [ $input = 'deploy stack' ]
    then
        installStack=1
    elif [ $input = 'all' ]
    then
        installDocker=1
        installStack=1
    else
        echo "\"$input\" unknown" 
    fi
done        