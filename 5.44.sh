str=$(ls *.txt)
if !( [ -e text ] )
then
	mkdir text
fi
count=$(ls *.txt | wc -w)
i=1
while [ $i -le $count ]
do
	name=$(echo $str | cut -f$i -d " ")
	mv $name text
	let i=$i+1
done
