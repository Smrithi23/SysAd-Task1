for i in {1..5}
do
	for j in {1..20}
	do
	R=$(($RANDOM%51))
	cp -p /home/Heisenberg/task$i/Heisenberg_task$R.txt /home/Heisenberg$j/task$i
	done
done
for i in {1..5}
do
	for j in {1..20}
	do
	R=$(($RANDOM%51))
	cp -p /home/Hertz/task$i/Hertz_task$R.txt /home/Hertz$j/task$i
	done
done
for i in {1..5}
do
	for j in {1..20}
	do
	R=$(($RANDOM%51))
	cp -p /home/Holland/task$i/Holland_task$R.txt /home/Holland$j/task$i
	done
done
