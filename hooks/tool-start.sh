#!/bin/bash
branch=$(git symbolic-ref --short HEAD 2>/dev/null)
[ -n "$branch" ] && wt config state marker set "🤖" --branch="$branch"
