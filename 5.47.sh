count=$(ls -l |wc -l)
str=$(ls -l | tr "\n" "@")
i=1
while [ $i -le $count ]
do
	name=$(echo $str | cut -f$i -d "@" | cut -f2 -d ":" | cut -f2 -d " ")
	x=$(echo $str | cut -f$i -d "@" | cut -c4)
	d=$(echo $str | cut -f$i -d "@" | cut -c1)
	echo $name | grep -q ".exe"
	contain=$?
	if [ "$x" = "x" ] && [ "$d" != "d" ] && [ $contain -ne 0 ] 
	then
		newname="$name.exe"
		touch $newname
		cp -p $name $newname
		rm -f $name
	fi
	let i=$i+1
	contain=""
done
