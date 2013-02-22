#!/usr/local/bin/perl -T

# $Id: runtests.t 7899 2012-04-10 17:41:21Z jonasbn $

# $HeadURL: https://logiclab.jira.com/svn/BDKPST/trunk/t/runtests.t $

use strict;
use warnings;

use lib qw(t);

use Test::Class::Business::DK::Postalcode;
use Test::Class::Data::FormValidator::Constraints::Business::DK::Postalcode;


Test::Class->runtests;