#!/bin/sh
# Builds portfolio.html: a single self-contained copy of index.html with every assets/*.jpg
# embedded as a data URI (used for the Claude artifact preview). GitHub Pages serves index.html directly.
cd "$(dirname "$0")"
perl -MMIME::Base64 -pe 's{src="(assets/[\w-]+\.jpg)"}{ open(my $f,"<:raw",$1) or die "$1: $!"; local $/; my $d=<$f>; "src=\"data:image/jpeg;base64,".encode_base64($d,"")."\"" }ge' index.html > portfolio.html
