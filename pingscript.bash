##Ping Script
## Enter hostname to ping in hostname variables

hostnames="8.8.8.8 1.1.1.1 ns1.telstra.net"

for dest in $hostnames ; do
         echo "src="`hostname`",dest="$dest",proto=icmp,packet_loss_pct="`ping -c 10 -i .2 -4 $dest|grep packets| cut -d " " -f 6 | sed 's/[^0-9]//g'`
		 echo "src="`hostname`",dest="$dest",proto=icmp,avg_latency="`ping -c 10 -i .2 -4 $dest|grep rtt| cut -d "/" -f 5`
done
