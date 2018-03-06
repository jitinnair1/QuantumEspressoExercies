#!/bin/bash
factorial () { 
    if (($1 == 1))
    then
        echo 1
        return
    else
        echo $(( $( factorial $(($1 - 1)) ) * $1 ))
    fi
}
exponent () {
	echo $($1^$2 | bc)
}
factorial 5
exponent 2,3