## Description
This application converts amino acid HGVS variants between triple letter amino acid and single letter amino acid nomenclature.

	Example:
	p.Gly410Arg	<=>	p.G410R
	p.Gln1835Arg	<=>	p.Q1835R
	p.Glu1619Ter	<=>	p.E1619*

It consists of two scripts
	* 3to1_amino_acid_change.pl converts triple letter to single letter amino acid variants.
	* 1to3_amino_acid_change.pl converts single letter to triple letter amino acid variants.

## Inputs
HGVS variants in Single column input file

## Outputs
HGVS variants in single column output file

## Scripts
3to1_amino_acid_change.pl
1to3_amino_acid_change.pl

## Usage
perl 3to1_amino_acid_change.pl <INPUT_FILENAME> <OUTPUT_FILENAME>
perl 1to3_amino_acid_change.pl <INPUT_FILENAME> <OUTPUT_FILENAME>

## Release Notes (1.0.0)
This application converts amino acid HGVS variants between triple letter amino acid and single letter amino acid nomenclature.
