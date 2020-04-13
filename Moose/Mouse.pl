#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use FindBin qw($RealBin);
use lib $RealBin;
use Mouse;

my $mickey = Mouse->new(name => "Mickey");

$mickey->speak;

