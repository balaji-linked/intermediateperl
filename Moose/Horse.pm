package Horse;
use v5.16;
use strict;
use warnings FATAL => 'all';

use Moose;
use namespace::autoclean;

with 'Animal';

sub sound {
    "neigh"
}

sub default_color {
    "brown"
}

__PACKAGE__->meta->make_immutable;

1;