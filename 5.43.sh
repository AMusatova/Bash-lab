str=$(ls a*)
count=$(ls a* | wc -w)
i=1
while [ $i -le $count ]
do
	oldname=$(echo $str | cut -f$i -d " ")
	newname=$(echo $str | cut -f$i -d " " | cut -f2- -d "a")
	newname="A$newname"
	touch $newname
	cp $oldname $newname
	rm -f $oldname
	let i=$i+1	
done
