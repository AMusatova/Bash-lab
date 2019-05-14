str=$(ls *.txt)
count=$(ls *.txt | wc -w)
i=1
while [ $i -le $count ]
do
	oldname=$(echo $str | cut -f$i -d " ")
	newname=$(echo $str | cut -f$i -d " ")
	newname=${newname%.*}
	newname="$newname.doc"
	touch $newname
	cp $oldname $newname
	rm -f $oldname
	let i=$i+1	
done
