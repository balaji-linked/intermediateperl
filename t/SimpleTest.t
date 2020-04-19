#!/usr/bin/perl
use v5.14;
use warnings;
use Test::More;

is(sqrt(1), 1, "The square root of 1 is 1");


{
    my $n = -1;
    eval { sqrt($n) };
    say $@;

    ok( $@, '$@ is set after sqrt(−1)' );
}

BEGIN {
    use_ok('Animal')|| say "Bail Out!";
}

ok(defined &Animal::speak, "Animal::speak is defined");
#ok(defined &Animal::color, "Animal::color is defined"); - test case will pass only when the method is declared with a sub. If declared with a sub,
#it won't succeed.
ok(defined &Animal::dummy,"Animal::dummy is defined");

done_testing();
