package Animal;

use v5.16;
use strict;
use warnings FATAL => 'all';
use Moose::Role;
use namespace::autoclean;

requires qw(sound default_color);

has 'name' => (is => 'rw');
has 'color' => (is => 'rw', default => sub {
    shift -> default_color
});
#has 'sound' => (is => 'ro');

sub speak {
    my $self = shift;
    say $self->name, " goes ", $self->sound;
}

#__PACKAGE__->meta->make_immutable;

1;