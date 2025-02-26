#!/usr/bin/perl -w

use strict;
use Net::Ping;
	  
my $host = $ARGV[0];
	  
my $p = Net::Ping->new("icmp");
	  
if ($p->ping($host)) {
    print "$host is alive.\n";
} else {
    print "$host is not reachable.\n";
}
	
