# $Id: get_all_data.t 7785 2011-09-17 17:22:44Z jonasbn $

use strict;
use warnings;
use Data::Dumper;
use Test::More tests => 3;

#test 1
BEGIN { use_ok('Business::DK::Postalcode', qw(get_all_data)); }

my $postalcodes_ref;

#test 2
ok($postalcodes_ref = get_all_data());

#test 3
is(scalar(@{$postalcodes_ref}), 1254);
