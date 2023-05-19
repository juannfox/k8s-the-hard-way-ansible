#!/bin/bash
#Creates a virtual enviroment for python within molecule's scenario.

venv_path="venv"
rc=1

mkdir $venv_path -p

python3 -m venv $venv_path
if [[ $? == 0 ]];then
    echo "venv created. To continue run: source ${venv_path}/bin/activate;/bin/bash ./bootstrap_pip.sh"
else
    echo Error creating venv. Aborting...
fi

exit $rc