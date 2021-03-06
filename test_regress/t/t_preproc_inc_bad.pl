#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# Lesser General Public License Version 3 or the Perl Artistic License
# Version 2.0.

scenarios(vlt => 1);

lint(
    fails => 1,
    # The .vh file has the error, not the .v file
    expect =>
'%Error: t/t_preproc_inc_inc_bad.vh:10: syntax error, unexpected endmodule, expecting IDENTIFIER'
    );

ok(1);
1;
