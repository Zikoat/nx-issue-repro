#!/bin/bash

pnpm run serve

echo "Listing all files except node_modules:"
find . -type d -name node_modules -prune -o -type f -print

echo "========================"

echo "Listing node modules:"
pnpm list --parseable

