#!/usr/bin/perl
use v5.14;
use warnings;
use Test::More;

BEGIN {
    my @classes = qw(Animal Horse Mouse);
    plan tests => scalar @classes;

    use_ok($_) || say "Bail out! $_ did not load!" for @classes;
}

done_testing();

