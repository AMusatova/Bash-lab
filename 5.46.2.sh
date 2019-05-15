str=$(ls a?.doc) #условие изменено, ищем файл из 6 символов
count=$(ls a?.doc | wc -w)
i=1
while [ $i -le $count ]
do
	oldname=$(echo $str | cut -f$i -d " ")
	newname=$(echo $str | cut -f$i -d " ")
	newname=${newname%.doc}
	newname="$newname.text"
	touch $newname
	cp $oldname $newname
	rm -f $oldname
	let i=$i+1	
done
