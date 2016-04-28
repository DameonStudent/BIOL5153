#!/usr/bin/perl

use strict;
use warnings;
my $usage = "$0 phylip_file\n";
$ARGV[0] or die $usage;

my $phylip_file = shift @ARGV;

my %sequences;
my $num_species = 0;
my $alignment_length = 0;

open(PHYLIP, $phylip_file) || die "Can't open $phylip_file";

while(my $line = <PHYLIP>){
chomp $line;
$line =~ s/\s+/>\n/g;

my $seq;

my $header;


	if($line =~ />/){
	
	$header = $`;
		
		if($header =~ /\D/){
		$header =~ s/_/ /g;
		$header =~ s/>//g;
		$header = ">$header";
	
		}
	}
	if($line =~ />/){
	
	$seq = $';
	print $header, "\n";
	$sequences{$header} .= $seq;
	}

}

close PHYLIP;

foreach my $species (keys %sequences){
print $species, "\t", $sequences{$species}, "\n";
}

exit;
