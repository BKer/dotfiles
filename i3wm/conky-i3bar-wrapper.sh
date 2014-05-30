#!/bin/sh

# Send the header so that i3bar knows we want to use JSON
echo '{"version":1}'

# Open the (endless) array
echo '['

# Send an empty array first.
echo '[],'

# Now Conky will "take over" and will provide the information to display.
exec conky -c $HOME/.i3/conkyjson

