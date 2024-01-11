#!/bin/bash
git checkout dev
git pull origin dev
git checkout prd
git merge dev
tag_name="release-$(date +'%Y%m%d%H%M%S')"
git tag -a "$tag_name" -m "Release $tag_name"
git push origin prd --tags
git checkout dev

