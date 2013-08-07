# $Id: changes.t 8208 2013-08-07 08:58:58Z jonasbn $

use strict;
use warnings;

use Test::More;
eval 'use Test::CPAN::Changes';
plan skip_all => 'Test::CPAN::Changes required for this test' if $@;
changes_ok();