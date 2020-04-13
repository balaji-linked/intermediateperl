#!/usr/bin/perl
use v5.16;
use strict;
use warnings FATAL => 'all';
use FindBin qw($RealBin);
use lib $RealBin;
use Horse;

my $talking = Horse->new(name=> "Mr. Ed");
#$talking->color("grey");

say $talking->name, " is colored ", $talking->color;
