#!/bin/sh

# Check if initialization has already been done
if [ ! -f /var/lib/ocis/.initialized ]; then
  # Run the initialization command
  ocis init
  # Create a file to mark that initialization has been done
  touch /var/lib/ocis/.initialized
fi

# Start the main OCIS process
ocis server
