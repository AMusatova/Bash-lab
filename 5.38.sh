if [ $# -gt 0 ]
then
	case $1 in
		"-l")ls ./.recycler/*;;
		"-d")rm -f ./.recycler/*;;
		"-a")du -sh ./.recycler;;
		*)while [ $# -gt 0 ]
		do
			if [ -e $! ]
			then
				mv $1 .recycler
			fi
			shift
		done;;
	esac
else
	echo Error
	exit 1
fi
