#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 5;

use Math::Int64::C_API::Sample;

my $i = some_int64();

ok($i == -42);
$i <<= 33;
is("$i", "-360777252864");

my $j = int64_addmul(-$i, (2**33), 128);
is ("$j", "1460288880640");

my $k = uint64_sqr($j+1);
is ("$k", "2920577761281");

is ("". uint64_rand(), "17761629189777429372");

