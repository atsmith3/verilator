#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# Lesser General Public License Version 3 or the Perl Artistic License
# Version 2.0.

scenarios(vlt => 1);

compile(
    verilator_flags2 => ["--debug-fatalsrc"],
    fails => $Self->{vlt_all},
    expect =>
'%Error: Internal Error: .*: --debug-fatal-src
.* See the manual and .*',
    );

ok(1);
1;
