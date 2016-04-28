#!/usr/bin/perl

use strict;
use warnings;
my $usage = "$0 fasta_file\n";
$ARGV[0] or die $usage;

my $fasta_file = shift @ARGV;

my %sequences;
my $num_species = 0;
my $alignment_length = 0;

open(FASTA, $fasta_file) || die "Can't open $fasta_file";
my $header;
while(my $line = <FASTA>){
chomp $line;


my $seq;
#check for fasta header

if($line=~/\A>(.*)/){

$header = $line;

$header=~ s/\s+/_/g;
$header=~ s/\A>//;
print $header, "\n";

}else{
print $header, "\n";
$sequences{$header} .= $line;

}

}

close FASTA;

foreach my $species (keys %sequences){
print $species, "\t", $sequences{$species}, "\n";
}

exit;
