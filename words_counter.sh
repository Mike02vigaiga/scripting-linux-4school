#!/bin/bash

#exit the sript if an error occurs-----
set -e

#help menu-------------
if [[ $1 == "--help" ]];then
ak=2
echo "Usage: $0 [OPTION] [location/TEXTFILE]\n"
echo "            -w  count the number of words 'TEXTFILE' "
echo "            -l  count the number of lines in 'TEXTFILE' "
echo "            -m  count the number of character in 'TEXTFILE' "
echo "--"
echo "Full documentation at: <https://github.com/Mike02vigaiga/scripting-linux-4school/>"
fi
if [[ $# -eq 0 || $# -eq 1 ]];then
echo "try: '$0 --help' for more information"
else
#script----------------
if [[ -e $2 ]];then
count=$(wc $1 $2)
al=2
case $1 in

  -w)
echo "number of words: $count"
;;

  -l)
echo "number of lines; $count "
;;

  -m)
echo "number of characters $count"
;;
esac

else
echo "file $2 does not exist"
fi
fi
