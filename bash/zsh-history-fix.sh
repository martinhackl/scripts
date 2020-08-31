#!/usr/bin/env bash
#===============================================================================
#
#         NAME: zsh-reset-fix.sh
#
#        USAGE: zsh-reset-fix.sh
#
#  DESCRIPTION: Fixes zsh `corrupt history file` error.
#
# REQUIREMENTS: zsh
#      VERSION: 1.0.0
#    REFERENCE: https://shapeshed.com/zsh-corrupt-history-file/
#
#===============================================================================

set -o errexit
set -o pipefail
set -o nounset

mv ~/.zsh_history ~/.zsh_history_bad
strings ~/.zsh_history_bad > ~/.zsh_history
fc -R ~/.zsh_history
rm ~/.zsh_history_bad

