##Arithmetic dictionary code added 
#!/bin/bash -x
read -p "Enter value: " a
read -p "Enter value: " b
read -p "Enter value: " c

declare -A arithmetic
op1=$(( $a + $b * $c))
op2=$(( $a * $b + $c))
op3=$(( $c + $a / $b))
op4=$(( $a % $b + $c))

for((i=1;i<=4;i++))
do
	arithmetic[(($i))]=$(("op"$i))
	Array[((i))]=$(("op"$i))
done
echo "Dictionary: "${arithmetic[@]}

for(( i=0; i<4; i++))
do
	Array[(($i))]=${arithmetic[(($i))]}
done

echo "Array: "${Array[@]}

sortedArray=$(printf '%s\n' "${Array[@]}" | sort -n)
echo "Sorted Array: "$sortedArray




##Flip Coin Simulator Code added
#!/bin/bash -x
headCounter=0
tailCounter=0
while [ 1 -eq 1 ]
do
        randomGenerator=$((RANDOM%2))
        if [ $randomGenerator -eq 0 ]
        then
                ((headCounter++))
                if [[ $headCounter -eq 21 ]]
                then
                        echo "Head came" $headCounter
               		#echo "Head: "$headCounter
			exit
		 fi
        else
                ((tailCounter++))
                if [[ $tailCounter -eq 21 ]]
                then
                        echo "Tail came" $tailCounter
			#echo "Tail: "$tailCounter
			exit
		fi
        fi
done
