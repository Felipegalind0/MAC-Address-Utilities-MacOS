echo '
MAC ADDRESS CHANGER
Made by Felig2013.
Mozilla public licence 2.0

Starting...
'
address=$(ifconfig en0 | grep ether)


Echo 'current address is:     '$address

cadd=${address:7:9}


Echo 'will use base:                 '$cadd

radd=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//') 


Echo 'randomly generated address is: '$radd

NAA=${radd:9}

Echo 'randomly complement is:        '$radd

NA=$cadd$NAA

Echo 'will use address:              '$NA

sudo ifconfig en0 ether $NA

NCadd=$(ifconfig en0 | grep ether)


Echo 'done, current address:  '$NCadd

Echo 'finished, will exit now'
exit