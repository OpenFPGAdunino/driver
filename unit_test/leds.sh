echo 0x03030300 > /sys/kernel/debug/openfpgaduino/power
echo 0xFFFFFFFF > /sys/kernel/debug/openfpgaduino.c/gpio0/doe
while true 
do
	LIST=`ls -v /sys/kernel/debug/openfpgaduino/gpio0/io*`
	for PIN in $LIST
	do
		echo 0x0 > $PIN
		sleep 0.01
		echo 0xFF > $PIN
	done
done
echo 0x0 > /sys/kernel/debug/openfpgaduino/gpio0/gdoe
echo 0x0 > /sys/kernel/debug/openfpgaduino/power
