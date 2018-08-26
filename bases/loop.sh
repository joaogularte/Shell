for NUMBER in 0 1 2 3 4 5 6 7 8 9 ; do
    echo "O número é $NUMBER"
done

echo "Os arquivos de $(pwd)"
for FILE in $(ls -a) ; do
    echo $FILE
done

##Declare a array
declare -a VALUES=( 2 3 6 5 8 7 )
##Length of array
echo ${#VALUES[*]}


##Loop like C
for((a=0; a < ${#VALUES[*]}; a++)) ; do
    echo ${VALUES[a]}
done

N=0
while [ $N -lt 10 ]; do
    echo $N
    ((N++))
done

NUM=0
until [ $NUM -eq 10 ]; do 
    echo $NUM
    ((NUM++))
done