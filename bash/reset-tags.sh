#!/usr/bin/env bash
#===============================================================================
#
#         NAME: reset-tags.sh
#
#        USAGE: reset-tags.sh
#
#  DESCRIPTION: Removes local tags and fetches remote tags afterwards. Useful if
#               there is a mismatch between remote and local and Git complains
#               about it.
#
# REQUIREMENTS: git
#      VERSION: 1.0.0
#
#===============================================================================

set -o errexit
set -o pipefail
set -o nounset

git tag -l | xargs git tag -d
git fetch --tags

