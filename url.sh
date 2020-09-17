#!/bin/bash
commitid="$(git rev-parse --short=5000 HEAD~0)"
repoSlug="$(git config --get remote.origin.url | cut -d/ -f5 | cut -d. -f1)"
username="$(git config --get remote.origin.url | cut -d/ -f4 | cut -d. -f1)"

echo https://github.com/${username}/${repoSlug}/commit/"${commitid}"
