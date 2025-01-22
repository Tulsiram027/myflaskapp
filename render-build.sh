#!/bin/bash
# Skip Rust installation as it's already present in Render
echo "Rust is already installed. Skipping Rust setup."

# Ensure the cargo environment is sourced
source /opt/render/.cargo/env

# Install Python dependencies
pip install -r requirements.txt
