This trace was created using

dig +bufsize=0 +noedns -t NS .  @2001:4860:4860::8888
dig +bufsize=0 +noedns -t NS info @2001:7fd::1
dig +bufsize=0 +noedns -t NS computer-networking.info @2001:500:19::1
dig +bufsize=0 +noedns -t NS net @2001:7fd::1
dig +bufsize=0 +noedns -t NS ovh.net @2001:503:a83e::2:30
dig +bufsize=0 +noedns -t AAAA dns20.ovh.net @2001:41d0:1:1981::1
dig +bufsize=0 +noedns -t AAAA www.computer-networking.info @2001:41d0:1:4a8f::1
dig +bufsize=0 +noedns -t NS be @2001:7fd::1
dig +bufsize=0 +noedns -t NS ac.be @2001:678:9::1
dig +bufsize=0 +noedns -t NS ucl.ac.be @2001:6a8:3c80:c000::40
dig +bufsize=0 +noedns -t NS info.ucl.ac.be @2001:6a8:3081:1::53
dig +bufsize=0 +noedns -t AAAA cnp3book.info.ucl.ac.be @2001:6a8:308f:1::d


Conversion:

tshark -n -J "dns udp" -T pdml -r dns-computernetworking.pcap  -o udp.summary_in_tree:FALSE > dns-computernetworking.pdml
