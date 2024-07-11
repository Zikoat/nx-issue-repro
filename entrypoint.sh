#!/bin/bash

# Echo the distribution information
echo "Distribution information:"
cat /etc/os-release

# Run the serve command without color codes
pnpm run serve 

# Find all files recursively except node_modules and sort them
echo "Listing all files except node_modules:"
find . -type d -name node_modules -prune -o -type f -print | sort

# Echo a visual splitter
echo "========================"

# List node modules with pnpm (without parseable option)
echo "Listing node modules:"
pnpm list
