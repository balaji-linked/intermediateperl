#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use FindBin qw($RealBin);
use lib $RealBin;

use Cow;
use Horse;
use Sheep;


Cow::speak;
Horse::speak;
Sheep::speak;

Cow->speak;
Horse->speak;
Sheep->speak;