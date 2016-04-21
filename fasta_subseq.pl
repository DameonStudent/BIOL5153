#! /usr/bin/perl

# inputs from user
print "Enter the File and/or path for the fasta file that you are trying to extract from\n";

$fasta = <STDIN>;

print "At which point in the fasta file would you like to begin (number)\n";

$start = <STDIN> -1;

print "Input the the ending coordinate (number)\n";

$end = <STDIN>;

print "would you like the just the sequence or reverse compliment of your extract? For just the extracted sequence press enter/return. For reverse type reverse.\n";

$feat = <STDIN>;

#decision tree for forward or reverse request


#open fasta file

open(FASTA,$fasta) || die "Cannot open $fasta\n";
$line_num = 0;
#separate header from sequence
while( $line = <FASTA> ){
$line_num++;
	
	if( $line =~ />/){
	$header = $line;
}else{
	$seq = $line;

}
}
# extract subsequence
$extract = substr($seq,$start,$end);

#create reverse compliment
$rev = reverse($extract);
$rev =~ tr/ACGTacgt/TGCAtgca/;

$fasta =~ /\S/;
$start = $start +1;
$end =~ /\S/;


# decision tree for subsequence or reverse compliment
if($feat =~ /reverse/){
chomp $fasta;
chomp $end;
print"\>$fasta\_$start\_$end\_$rev\n";

}else{
chomp $fasta;
chomp $end;
print "\>$fasta\_$start\_$end\_$extract\n";


}

close FASTA;

exit;
