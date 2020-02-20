#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';


open (DATA, "<:utf8", ".\\Autovivification\\data") || die "Cannot open file $!";
binmode(STDOUT, ":utf8");
my %total_bytes;


while(<DATA>) {
    chomp;
    my ($source, $destination, $bytes) = split;
    $total_bytes{$source}{$destination} += $bytes;
}

for my $source (sort keys %total_bytes) {
    for my $destination (sort keys %{$total_bytes{$source}}) {
        print "$source => $destination:", " $total_bytes{$source}{$destination} bytes\n";
    }
}