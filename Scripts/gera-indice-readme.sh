#!/bin/bash

# Script to generate an index README file for the documentation
# It scans the docs directory for .md files and creates a README.md with links to them

ls -1 docs/[0-9]*.md | while read arq; do 
    titulo=$(head -3 "${arq}" | tail -1 | sed 's/^# //'); 
    echo "- [${titulo}](${arq})"; 
done >> README.md