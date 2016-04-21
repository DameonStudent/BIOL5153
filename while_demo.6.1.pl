#! /usr/bin/perl

# Add up some odd numbers
print "Enter Count variable\n";

$count = <STDIN>;
print "Enter Sum variable\n";

$sum = 0;
print "Enter maximum count\n";
$max = <STDIN>;

while( $count < $max ){
  print $count, "\n";
  $sum += $count;
  $count += 1;
}

print "The final count: $count\n";
print "The sum total was: $sum\n";

exit;

