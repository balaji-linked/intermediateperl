#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use v5.16;
use FindBin qw($RealBin);
use lib $RealBin;

use Cow;
use Horse;
use Sheep;
use Mouse;

my @pasture = qw(Cow Cow Horse Sheep Sheep Mouse);

$_ -> speak for @pasture;
