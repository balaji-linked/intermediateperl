#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use v5.16;
use FindBin qw($RealBin);
use lib $RealBin;

use Sheep;

my $lost = bless {Name=>"Bo", Color=>"White"}, 'Sheep';

