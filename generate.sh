#!/bin/bash

context=$1

if [[ -n "$context" ]]; then
    echo "Generating with $context context..."
    cat template.html | sed -e 's/{replace}/'"$context"'/g' > "$context".html
    echo "Done!"
else
    echo "No context given"
    echo "Usage:"
    echo "  ./generate.sh adobe"
fi
