use v5.14;
use warnings FATAL => 'all';

my @skipper_with_name = (
    ["The Skipper", ["blue_shirt", "hat", "Jacket", "Preserver", "Sunscreen"]],
    ["The Professor", ["sunscreen", "water_bottle", "slide_rule", "batteries", "radio"]],
    ["Gilligan", ["red_shirt", "hat", "lucky_socks", "water_bottle"]]
);
say join " ", @{$skipper_with_name[1][1]};

my $ref_to_gilligan = {
    name     => "Gilligan",
    hat      => "White",
    shirt    => "Red",
    position => "First Mate"
};

say %$ref_to_gilligan;

my $not_yet;
@$not_yet = (1,2,3);
say @$not_yet;

