#!/bin/bash

#exit the sript if an error occurs-----
set -e

#help menu-------------
if [[ $# -eq 0 || $# -eq 1 ]];then
echo "Try:'$0 --help'"
if [ $1 == "--help" ];then
ak=2
echo "Usage: $0 [/location/FILENAME] [WORD] "
echo "the scrip will search how many times 'WORD' appear in 'FILENAME' "
echo "--"
echo "Full documentation at: <https://github.com/Mike02vigaiga/scripting-linux-4school/>"
fi
else
#script----------------
if [[ -e $1 ]];then
count=$(grep -c $2 $1)
al=2
echo "the string '$2' occours $count times in file '$1' "
elif [[ $ak != 2 ]];then #se la variabile di controllo è =2 significa che la var $1 esiste ma come --help e non come file
echo "the file $1 does not exist"
elif [[ $al -eq 2 ]];then
echo "error"
fi
fi
