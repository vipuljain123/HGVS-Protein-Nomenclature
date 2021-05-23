#!/usr/bin/perl –w

# T# This script is created by Vipul Todarwal to convert 3 letter amino acid change to single letter amino acid change. Results will be printed on terminal.

#	Example input		Example output
#	p.G410R         =>	p.Gly410Arg	
#	p.Q1835R        =>	p.Gln1835Arg	
#	p.E1619*	    =>	p.Glu1619Ter

#	Usage 		    =>	perl 1to3_amino_acid_change.pl <INPUT_FILE> <OUTPUT_FILE>


$INfilename=$ARGV[0];
$OUTfilename = $ARGV[1];

unless(open(O,$INfilename))
{
	print "\n\nCan't open file $INfilename\n";
}

@protein_data=<O>;

close (O);

unless(open(OUT,">$OUTfilename")){
print "\n\nCan't open file $OUTfilename\n\n";
exit;
}

foreach $pdline (@protein_data)
{
    chomp $pdline;
    $pdline =~ s/A/Ala/g; $pdline =~ s/R/Arg/g; $pdline =~ s/N/Asn/g; $pdline =~ s/D/Asp/g; $pdline =~ s/B/Asx/g; $pdline =~ s/C/Cys/g; $pdline =~ s/G/Gly/g; $pdline =~ s/E/Glu/g; $pdline =~ s/Q/Gln/g; $pdline =~ s/Z/Glx/g; $pdline =~ s/H/His/g; $pdline =~ s/I/Ile/g; $pdline =~ s/L/Leu/g; $pdline =~ s/K/Lys/g; $pdline =~ s/M/Met/g; $pdline =~ s/P/Pro/g; $pdline =~ s/F/Phe/g; $pdline =~ s/S/Ser/g; $pdline =~ s/T/Thr/g; $pdline =~ s/W/Trp/g; $pdline =~ s/Y/Tyr/g; $pdline =~ s/V/Val/g; $pdline =~ s/\*/Ter/g;

    print "\n",$pdline,"\n";
    print OUT $pdline."\n";
}

print "\n\nConversion Completed. Results stored in $OUTfilename\n\n";
close(OUT);

exit;
