#!/bin/bash
#Installs all the necessary pip packages. Ideally run this within venv.

if [[ $1 ]];then path=$1;fi
rc=1

if python3 -m pip --version &> /dev/null;then 
    pip3 install -r "requirements.txt" --upgrade
    if [[ $? == 0 ]];then
        rc=0
        echo pip3 packages installed. Ready for molecule
    else
        echo Error installing pip3 requirements. Aborting...
        rc=2
    fi
else
    echo pip3 not found. Aborting...
fi

exit $rc