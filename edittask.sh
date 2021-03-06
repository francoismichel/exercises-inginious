#!/bin/sh 
pcapfile=`grep .pcap $1 | awk '{print $2}'`
echo $pcapfile
mv $1 $1.old
sed 's/pcap:/trace:/' $1.old | sed 's/\.pcap/.pcap.xml/' | sed 's/range:/#range:/' > $1
tshark -T pdml -J "ipv6 icmpv6 tcp udp" -o tcp.relative_sequence_numbers:FALSE -r $pcapfile > $pcapfile.xml