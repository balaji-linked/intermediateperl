package Horse;
use v5.16;
use strict;
use warnings FATAL => 'all';
use FindBin qw($RealBin);
use lib $RealBin;
use Animal;

our @ISA = qw(Animal);

sub default_color {
    "white"
}

sub sound {
    "neigh";
}

1;