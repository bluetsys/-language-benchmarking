use strict;
use warnings;

my $add = 0;
my $index = 0;

my $st = time();
for $index (1..100000000){
    $add = $add + $index;
}
my $en = time() - $st;

print("==========================","\n");
print($add,"\n");
print(sprintf("%.2f", $en),"\n");