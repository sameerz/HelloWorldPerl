#/usr/bin/perl -w

use strict;

print "Hello\n";

my @array=('a','b','c');

print @array;
print "\n";
print "@array\n";

my %x=(a=>1, b=>'asdf', c=>3);

print "%x\n";
print "$x{a}\n";
foreach (sort keys %x) {
	print $_;
}
print "\n";
my @array=(1,2,3,4,5,6,7,8,9,10);
print @array, "\n";

sub factorial {
	my $x = @_[0];
	if($x==0) {
		return 1;
	}
	else {
		return $x * factorial ($x - 1)
	}
}

my $i; 
my @factorial_result;
foreach $i (1..10) {
	push @factorial_result, factorial($i);
}

print "factorial: ", join(", ", @factorial_result), "\n";

sub fibonacci {
	my $number_of_terms = @_[0];
	my $current = 0;
	my $prev = 0;
	my $next = 1;
	my $counter;
	my @result_array; 
	for ($counter = 0; $counter < $number_of_terms; $counter++) {
		if($counter <= 1) {
			$current = $counter;
		}
		else {
			$current = $prev + $next;
			$prev = $next; 
			$next = $current; 
		}
		#print $current;
		push @result_array, $current; 
	}
	return \@result_array;
}

my $fibonacci_result = fibonacci(10);
print "fibonacci: ", join(", ", @{$fibonacci_result});

__END__
