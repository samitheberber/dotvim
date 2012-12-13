#!/bin/bash
function sub_do {
  git submodule foreach $1
}

sub_do "git fetch origin"
sub_do "git checkout master"
sub_do "git reset --hard origin/master"
