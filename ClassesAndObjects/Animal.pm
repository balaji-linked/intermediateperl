package Animal;
use v5.16;
use strict;
use warnings FATAL => 'all';


sub named {
    my ($class, $name) = @_;
    my $self = {Name=>$name, Color=>$class->default_color};
    bless $self, $class;
}

sub name {
    my $either = shift;
    ref $either ? $either->{Name} : "an unnamed $either";
}

sub color {
    ref $_[0] ? $_[0]->{Color} : "unknown";
}

sub speak {
    say $_[0]->name, " is of color ", $_[0]->color , " goes ", $_[0]->sound;
}

sub set_color {
    my $obj = shift;
    $obj->{Color} = shift;
}

sub sound {
    die "You've to define sound in subclass";
}

1;