package Mouse;
use v5.16;
use strict;
use warnings FATAL => 'all';
use FindBin qw($RealBin);
use lib $RealBin;
use Animal;
use parent qw(Animal);
sub sound{"squeak"}

sub speak {
    my $class = shift;
    $class->SUPER::speak;
    say "But you can be barely heard";
}

1;