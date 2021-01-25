#!/bin/bash
while true
do
clear
echo  "MENU"
echo
echo  "Choose 1 to run"
echo  "Choose 2 to loop random.txt"
echo  "Choose 3 to use my student number"
echo
echo  "Choose q to quit"

read resposta
case "$resposta" in
1) read -p "Enter the position " Position
./Script01 $Position ;;
2) read -p "How Many Runs (Needs to be 0 or above) ? " Runs
       echo "Rodrigo_Pinto_result.txt added to your directory! " 
       i=0 
           touch Rodrigo_Pinto_result.txt
           rm Rodrigo_Pinto_result.txt
       while [ $i -lt $Runs ]
       do
         r=$(( ( RANDOM % 48502 )  + 1 ))
         bash ./Script01 $r >> Rodrigo_Pinto_result.txt
         i=$(( $i + 1 ))
       done 
           cat Rodrigo_Pinto_result.txt
       ;;
3) echo 'My Student number is 202000177'
   echo 'so...'
   samtools coverage  assembly.bam -r "gi|9626243|ref|NC_001416.1|:177-177" | awk '{ print $4 }'
   ;;
q) exit ;;
4) echo "Wow you find the easteregg"
   echo "PWD means PIKACHU"
 
esac
echo "Enter to return"
read input
done

