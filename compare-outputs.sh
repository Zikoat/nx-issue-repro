#!/bin/bash

# Step 1: Run docker-build script
echo "Running docker-build..."
pnpm docker-build

# Step 2: Run docker-serve script and save output to docker_output.log
echo "Running docker-serve and saving output to docker_output.log..."
pnpm docker-serve > docker_output.log 2>&1

# Step 3: Install dependencies locally
echo "Installing dependencies locally..."
pnpm install --frozen-lockfile

# Step 4: Run entrypoint.sh locally and save output to local_output.log
echo "Running entrypoint.sh locally and saving output to local_output.log..."
./entrypoint.sh > local_output.log 2>&1

# Step 5: Compare the outputs using VSCode's diff view
echo "Comparing docker_output.log and local_output.log using VSCode..."
code --diff docker_output.log local_output.log

echo "Comparison complete."
