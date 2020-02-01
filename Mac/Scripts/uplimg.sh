#!/bin/bash

# Quickly upload image to my own vps

# We use python's urlencode function to urlencode filenames with spaces
urlencode() {
  python -c 'import urllib, sys; print urllib.quote(sys.argv[1], sys.argv[2])' \
    "$1" "$urlencode_safe"
}

echo "Uploading $1"

# Configure your scp line accordingly, obviously
scp "$1" USER@SERVER:/WEB_FOLDER/img/

bn="$(basename "$1")" # Just the filename
enc=$(urlencode "$bn") # Encoded filename
final="https://URL/img/$enc" # Base URL + encoded filename

echo "$final"
open "$final" # Opens in browser, probably