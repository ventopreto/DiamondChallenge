#!/bin/sh

if [ "$1" = "test" ]; then
  exec rspec
elif [ "$1" = "standard" ]; then
  exec standardrb
else
  exec ruby lib/diamond_challenge.rb
fi
