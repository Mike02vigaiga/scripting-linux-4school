
#!/bin/bash

#exit the sript if an error occurs-----
set -e

#help menu-------------
if[$# = 0];
then
echo"Try $0 --help"
else
if[$1 = "--help"];
then
echo="Usage: ./$0 [/location/FILENAME] [WORD] "
echo="the scrip will search how many times 'WORD' appear in 'FILENAME' "
echo="--"
echo="Full documentation at: <https://github.com/Mike02vigaiga/scripting-linux-4school/>"
else
fi
fi
#script----------------
if[-e $1 && -r $1];
then
count=$(grep -c '$2' $1)
echo="the string '$2' occours $count times in file '$1' "

fi
