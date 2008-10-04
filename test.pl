#!/usr/bin/perl -w

`./delatex test/in > /tmp/testDelatex.txt`;
my $diffResult = `diff test/correct.txt /tmp/testDelatex.txt`;

if ($diffResult eq '') {
	print "Test ok\n";
	exit(0);
} else {
	print "Test failed:\n";
	#print $diffResult;
	`kdiff3 test/correct.txt /tmp/testDelatex.txt`;
	exit(11);
}
