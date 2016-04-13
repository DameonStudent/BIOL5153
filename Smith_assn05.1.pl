#! /usr/bin/perl

# Question 1
# Add up some odd numbers
$count = 1;
$sum = 0;


while( $count < 10 ){
  print $count, "\n";
  $sum += $count;
  $increment = ($count += 1);
  $increment;
}
$max = $count;
print "The final count: $max\n";
print "The sum total was: $sum\n";






# Question 2

# DNA
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
$start = 2;
$end = (length $DNA) - ($start-1) ;
$feat= substr($DNA,$start,$end);


# print the DNA onto the screen
print "Here is the format :\n\n";
#print "$DNA\n\n";
#print "$start\n\n";
#print "$end\n\n";
#print "$feat\n\n";

print "\>$DNA\_$start\_$end\_$feat\n";
print "Here is the starting DNA:\n\n";
print "$DNA\n\n";

exit;

