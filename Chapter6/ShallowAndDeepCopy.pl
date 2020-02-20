#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';
use Data::Dumper;
use Storable;

my @provisions = ("hat", "sunscreen");
my @science_kit = ("microscope", "radio");
push @provisions, \@science_kit;

my @packed = @{Storable::dclone \@provisions}; #deep copy.
push @packed, "blue_shirt";
push @{$packed[2]}, "batteries";

say Data::Dumper->Dump(
    [\@provisions],
    [qw(*provisions)]
);

say Data::Dumper->Dump(
    [\@packed],
    [qw(*packed)]
);