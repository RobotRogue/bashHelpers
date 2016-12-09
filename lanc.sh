#!/bin/bash

echo " "; echo "-- Navigating to Lanc project --"
cd $HOME/git/lan-progressive
pwd

echo " "; echo "-- Performing a Git Pull --"
git pull
echo " " ; echo "- Done."

echo " "; echo "-- Performing NPM Install --"
npm i
echo " "; echo "- Done."

echo " "; echo "-- Current Git Branch --"
git rev-parse --abbrev-ref HEAD

echo " "; echo "-- Latest Commit Hash --"
git --no-pager log -n 1

echo " "; echo "-- Running Latest Build --"
npm run dev
