#!/bin/bash

SEARCH_TERM="$1"
SEARCH_ROOT="$2"

if [[ -z "$SEARCH_ROOT" ]]; then
    SEARCH_ROOT="."
fi

find "$SEARCH_ROOT" -iname "*$SEARCH_TERM*" | gawk -e 'BEGIN { total_files = 0; } // { total_files++; } END { print total_files; }'
