#!/bin/bash

# Run make
make

# Extract the TARGET from the Makefile
# -F '= ': specifices the field delimiter is '= '
# '/^TARGET/: {print $2}': Matches the line that starts with "TARGET" and prints the value after the '='
# | tr -d ' ': Removes any whitepsace around the extracted value
TARGET=$(awk -F '= ' '/^TARGET/ {print $2}' Makefile | tr -d ' ')

# Ensure the target exists and is executable
if [ -x "$TARGET" ]; then
    # If the target does not exist or is not executable, print an error message and exit with the status 1.
    ./"$TARGET"
else
    echo "Error: Executable $TARGET not found or not executable."
    exit 1
fi
