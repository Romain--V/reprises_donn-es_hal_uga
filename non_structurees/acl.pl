#!/usr/bin/perl

use strict;
my $compt = 0;

 while (<>){
    $compt++;
    s/^\n$//;
    s/((\w+), \w+), /\@Article{$2_$compt ,\n author = {$1},\n/;
    s/«(.+)»/title = {$1},\n/;
    s/pp\. (.+)\./pages = {$1},\n/;
    s/, ([1-2]\d\d\d),/\nyear = {$1},\n/;
    s/$/}\n/;
    print;
};

  
