#!C:\Strawberry\perl\bin\perl.exe
use v5.10; # state
use strict;
use warnings;

use Win32;
use Win32::Process;
use Win32::Process::Info; # cpanm install Win32::Process::Info
use Win32::Process::Memory; # cpanm install Win32::Process::Memory
use Win32::Process::List; # cpanm install Win32::Process::List
use File::Monitor; # cpanm install File::Monitor

my $scriptFile = './TransScript.pl';

unless (-e $scriptFile) {
	Win32::MsgBox("Script Not Found !", MB_ICONSTOP);
	return;
}

$| = 1;

my $startupLogo = <<'_EOH_';

 >>>>>>>>>>>>>>>>>>>> <<<<<<<<<<<<<<<<<<<<
                                          
    Blue CrossGate Translation Toolkit    
                                          
                     release by pulish    
                          ver.20210825    
                                          
 >>>>>>>>>>>>>>>>>>>> <<<<<<<<<<<<<<<<<<<<

_EOH_

for my $c (split(//, $startupLogo)) {
	print $c;
	select(undef, undef, undef, 0.01);
}

do $scriptFile;

