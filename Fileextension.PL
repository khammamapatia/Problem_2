#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use File::Copy;

use File::Basename;

my @exts = qw(.txt .zip);

while (my $file = <DATA>) {
  chomp $file;
  my ($name, $dir, $ext) = fileparse($file, @exts);

  given ($ext) {
    when ('.pdf') {
      say "$file is a pdf file";
my @files = grep { $_ ne '.' && $_ ne '..' } readdir DIR; 

foreach(@files) { 
    print $_,"\n"; 
    my $newName = $_;
    if ($newName =~ /^KRAT/ || $newName =~ /^TRAT/ ) {
    $newName =~ s/STA/t00/g;
    print "RENAMED: $newName from $_ \n";

    rename($_, $newName); 
    }
}
    }
    default {
      say "$file is not a pdf file ";
    }
  }
}


