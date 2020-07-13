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




## Singlet FlipCoin code Added
#!/bin/bash -x

declare -A singlet

for (( i=0; i<50; i++ ))
do
	randomGenerator=$((RANDOM%2))
	if [ $randomGenerator -eq 0 ]
	then
		singlet["Heads"]=$(($head))
		((head++))
	else
		singlet["Tails"]=$(($tail))
		((tail++))
	fi
done

echo "Heads: "${singlet["Heads"]}
echo "Tails: "${singlet["Tails"]}

echo "Heads Pertcentage: " $((${singlet["Heads"]}*100/50))"%";
echo "Tails Percentage: " $((${singlet["Tails"]}*100/50))"%";




##Doublet Flip coin code added 
#!/bin/bash -x

declare -A doublet

for (( i=0; i<150; i++))
do
	randomGenerator=$((RANDOM%4))
	if [ $randomGenerator -eq 0 ]
	then
		doublet["HH"]=$(($HH))
		((HH++))
	elif [ $randomGenerator -eq 1 ]
	then
		doublet["HT"]=$(($HT))
		((HT++))
	elif [ $randomGenerator -eq 2 ]
        then
	        doublet["TH"]=$(($TH))
                ((TH++))
	else
                doublet["TT"]=$(($TT))
                ((TT++))

	fi
done

echo "HH: "${doublet["HH"]}
echo "HT: "${doublet["HT"]}
echo "TH: "${doublet["TH"]}
echo "TT: "${doublet["TT"]}

echo "HH Pertcentage: " $((${doublet["HH"]}*100/150))"%";
echo "HT Percentage: " $((${doublet["HT"]}*100/150))"%";
echo "TH Pertcentage: " $((${doublet["TH"]}*100/150))"%";
echo "TT Percentage: " $((${doublet["TT"]}*100/150))"%";
