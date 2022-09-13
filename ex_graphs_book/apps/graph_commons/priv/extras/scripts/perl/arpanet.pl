#!/usr/bin/perl
#---
# Excerpted from "Exploring Graphs with Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/thgraphs for more book information.
#---

# "sdc" [label="%{id: :sdc, label: \"Node\", name: \"SDC\", type: \"IMP\"}"]
# "sdc_h1" [label="%{id: :sdc_h1, label: \"Host\", name: \"DDP-516\", user: \"360/67\"}"]

# $IMPC = "#87CEEB";
$IMPC = "#A6E1FC";
$TIPC = "#ADFAE7";

while (<>) {
  if (/\\\"Host\\\"/) {
    s/\[.*name: \\\"([^\"]+)\\\".*\]/\[label="$1"]/;
  }
  if (/\\\"Node\\\"/) {
    s/\[label=".*name: \\\"([^\"]+)\\\".*\]/\[color=black, fillcolor="$IMPC", label="$1"]/;
  }
  print;
}
