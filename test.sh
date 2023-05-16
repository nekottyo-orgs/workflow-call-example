#!/bin/bash

git checkout -B test
git commit -m 'test' --allow-empty
git push origin test
gh pr create --fill -l 'bump:patch'
gh pr merge --squash --auto -d
git checkout main
git sync
git dmb
