#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use v5.16;
use FindBin qw($RealBin);
use lib $RealBin;
use Horse;



my $tv_horse = Horse->named("Mr. Ed");
$tv_horse->set_color('golden brown');
$tv_horse->speak;



