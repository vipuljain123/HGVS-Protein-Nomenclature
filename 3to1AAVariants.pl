# This script created by Vipul Todarwal (Jain) to convert HGVS three letter code amino acid variants to single letter code amino acid variants.

#	Example input		Example output
#	p.Gly410Arg	=>	p.G410R
#	p.Gln1835Arg	=>	p.Q1835R
#	p.Glu1619Ter	=>	p.E1619*

#	Usage 		=>	$ perl 3to1AAVariants.pl <INPUT_FILE> <OUTPUT_FILE>


$INfilename = $ARGV[0];
$OUTfilename = $ARGV[1];

unless(open(V,$INfilename)){
print "\n\nCan't open file $INfilename\n\n";
exit;
}

@data=<V>;

close(V);

$line=join('',@data);

$line=~s/ala/A/g; $line=~s/arg/R/g; $line=~s/asn/N/g; $line=~s/asp/D/g; $line=~s/asx/B/g; $line=~s/cys/C/g; $line=~s/glu/E/g; $line=~s/gln/Q/g;
$line=~s/glx/Z/g; $line=~s/gly/G/g; $line=~s/his/H/g; $line=~s/ile/I/g; $line=~s/leu/L/g; $line=~s/lys/K/g; $line=~s/met/M/g; $line=~s/phe/F/g;
$line=~s/pro/P/g; $line=~s/ser/S/g; $line=~s/thr/T/g; $line=~s/trp/W/g; $line=~s/tyr/Y/g; $line=~s/val/V/g; 

$line=~s/Ala/A/g; $line=~s/Arg/R/g; $line=~s/Asn/N/g; $line=~s/Asp/D/g; $line=~s/Asx/B/g; $line=~s/Cys/C/g; $line=~s/Glu/E/g; $line=~s/Gln/Q/g; 
$line=~s/Glx/Z/g; $line=~s/Gly/G/g; $line=~s/His/H/g; $line=~s/Ile/I/g; $line=~s/Leu/L/g; $line=~s/Lys/K/g; $line=~s/Met/M/g; $line=~s/Phe/F/g; 
$line=~s/Pro/P/g; $line=~s/Ser/S/g; $line=~s/Thr/T/g; $line=~s/Trp/W/g; $line=~s/Tyr/Y/g; $line=~s/Val/V/g; 

$line=~s/ALA/A/g; $line=~s/ARG/R/g; $line=~s/ASN/N/g; $line=~s/ASP/D/g; $line=~s/ASX/B/g; $line=~s/CYS/C/g; $line=~s/GLU/E/g; $line=~s/GLN/Q/g; 
$line=~s/GLX/Z/g; $line=~s/GLY/G/g; $line=~s/HIS/H/g; $line=~s/ILE/I/g; $line=~s/LEU/L/g; $line=~s/LYS/K/g; $line=~s/MET/M/g; $line=~s/PHE/F/g; 
$line=~s/PRO/P/g; $line=~s/SER/S/g; $line=~s/THR/T/g; $line=~s/TRP/W/g; $line=~s/TYR/Y/g; $line=~s/VAL/V/g; 

$line=~s/ter/\*/g; $line=~s/Ter/\*/g; $line=~s/TER/\*/g;


print "\n\n",$line,"\n\n";
print "\n\nConversion Completed...\n\n";


unless(open(OUT,">$OUTfilename")){
print "\n\nCan't open file $OUTfilename\n\n";
exit;
}

print OUT $line;

close(OUT);

exit;
