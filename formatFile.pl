#!/usr/bin/perl -w

use Data::Dump qw(dump);

$filename = "humanAccAttr.out";

$outputfile = "humanAccAttr.output";

 open( my $fh, '<', $filename ) or die "Can't open $filename: $!";
 open( my $OUT, '>', $outputfile ) or die "Can't open $filename: $!";
 while ( my $line = <$fh> ) {
	chomp $line;
	@fields = split("\t", $line);
	$half = int ($#fields/2);
	for ($i=0; $i <= $#fields; $i++){
		$no = $half+$i+1;
		if ($no <= $#fields){
			print $OUT "$fields[0]-$fields[$i+1]|$fields[$no]\n";
		}
	}
}