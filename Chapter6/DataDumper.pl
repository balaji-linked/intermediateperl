#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';
use Data::Dumper;
use Data::Dump qw/dump/;
use Data::Printer;
use Storable;
use YAML;
use JSON;
$Data::Dumper::Purity=1;

open(DATA, "<:utf8", "Chapter6\\data") || die "Cannot open file $!";
binmode(DATA, ":utf8");


my %total_bytes;
while(<DATA>) {
    chomp;
    my ($source, $destination, $bytes) = split;
    $total_bytes{$source}{$destination} += $bytes;
}

print Dumper(%total_bytes); #prints the hash in a more meaningful way. Deferences automatically and prints the values. The references
#have their own level of separation. Dumper uses {}.

dump(\%total_bytes); #dump implicitly prints the data but in a much nicer format than Dumper. Note that we pass the reference.

p(%total_bytes); #p subroutine prints the data nicely even without a reference.


print Dump(\%total_bytes); #YAML format dumping.

print JSON::to_json(\%total_bytes, {pretty=>1}); # print in a json format. The options map takes the option values for conversion.

=pod
while(my($source, $value) = each %total_bytes) {
    while(my($destination, $bytes) = each %$value) {
        say "$source => $destination:", " $bytes bytes";
    }
}
=cut

my @data1 = ("One", "Won");
my @data2 = ("Two", "Too", "To");

push @data1, \@data2;
push @data2, \@data1;

say Data::Dumper->Dump(
    [\@data1, \@data2],
    [qw(*data1 *data2)]
);

my $serialized = Storable::freeze[\@data1, \@data2];
my $deserialized = Storable::thaw($serialized);
say @{$$deserialized[0]}, @{$$deserialized[1]};

