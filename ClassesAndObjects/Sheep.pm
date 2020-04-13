package Sheep;
use v5.16;
use strict;
use warnings FATAL => 'all';
use FindBin qw($RealBin);
use lib $RealBin;
use Animal;
#our @ISA = qw(Animal);
use parent qw(Animal);

sub default_color {
    "brown"
}

sub sound {
    "Baahh"
}


1;