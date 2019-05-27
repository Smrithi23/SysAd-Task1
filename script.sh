groupadd group1
groupadd group2

useradd MasterH -m -d /home/MasterH -g group1
chmod 700 -R /home/MasterH

useradd Heisenberg -m -d /home/Heisenberg -g group1
chmod 700 -R /home/Heisenberg
setfacl -m u:MasterH:rwx -R /home/Heisenberg
for i in {1..5}
do
mkdir /home/Heisenberg/task$i
	for j in {1..50}
	do
	cat /dev/urandom | tr -cd [:graph:]|head -c 128 >> /home/Heisenberg/Heisenberg_task$j.txt
	done
done

useradd Hertz -m -d /home/Hertz -g group1
chmod 700 -R /home/Hertz
setfacl -m u:MasterH:rwx -R /home/Hertz
for i in {1..5}
do
mkdir /home/Hertz/task$i
	for j in {1..50}
	do
	cat /dev/urandom | tr -cd [:graph:]|head -c 128 >> /home/Hertz/Hertz_task$j.txt
	done
done

useradd Holland -m -d /home/Holland -g group1
chmod 700 -R /home/Holland
setfacl -m u:MasterH:rwx -R /home/Holland
for i in {1..5}
do
mkdir /home/Holland/task$i
	for j in {1..50}
	do
	cat /dev/urandom | tr -cd [:graph:]|head -c 128 >> /home/Holland/Holland_task$j.txt
	done
done

for a in {1..20}
do
useradd Heisenberg$a -m -d /home/Heisenberg$a -g group2
chmod 700 -R /home/Heisenberg$a
echo "umask 022" >> /home/Heisenberg$a/.profile
setfacl -m u:Heisenberg:rwx -R /home/Heisenberg$a
	for i in {1..5}
	do
	mkdir /home/Heisenberg$a/task$i
	done
done

for a in {1..20}
do
useradd Hertz$a -m -d /home/Hertz$a -g group2
chmod 700 -R /home/Hertz$a
echo "umask 022" >> /home/Hertz$a/.profile
setfacl -m u:Hertz:rwx -R /home/Hertz$a
	for i in {1..5}
	do
	mkdir /home/Hertz$a/task$i
	done
done

for a in {1..20}
do
useradd Holland$a -m -d /home/Holland$a -g group2
chmod 700 -R /home/Holland$a
echo "umask 022" >> /home/Holland$a/.profile
setfacl -m u:Holland:rwx -R /home/Holland$a
	for i in {1..5}
	do
	mkdir /home/Holland$a/task$i
	done
done
echo "00*** /home/Heisenberg/assign.h">>/var/school/cron/crontab/Heisenberg
echo "00*** /home/Hertz/assign.h">>/var/school/cron/crontab/Hertz
echo "00*** /home/Holland/assign.h">>/var/school/cron/crontab/Holland
