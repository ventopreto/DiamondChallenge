#!/bin/sh

if [ "$1" = "test" ]; then
  exec rspec
else
  exec ruby lib/diamond_challenge.rb
fi
