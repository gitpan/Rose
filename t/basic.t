#!/usr/bin/perl -w

use strict;

use Test::More tests => 2;

BEGIN 
{
  use_ok('Rose');
}

is(Rose->version, $Rose::VERSION, 'version()');
