package Mouse;
use strict;
use warnings FATAL => 'all';
use v5.16;

use Moose;
use namespace::autoclean;

with 'Animal';


sub sound {
    "squeak";
}

sub default_color {
    "white"
}
before 'speak' => sub {
  say "Mouse is going to speak";
};
after 'speak' => sub {
    say "But you can be bearly heard";
};


around 'name' => sub {
    my $next = shift;
    my $self = shift;
    say "Calling name";
    blessed $self ? $self -> $next(@_) : "unnamed self";
    say "Name called";
};

1;