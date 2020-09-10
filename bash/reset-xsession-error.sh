#!/usr/bin/env bash
#===============================================================================
#
#         NAME: reset-xsession-error.sh
#
#        USAGE: reset-xsession-error.sh
#
#  DESCRIPTION: Disable logging to .xsession-error. This error log can grow very
#               large and in extreme cases will use any space left on the drive.
#
# REQUIREMENTS: /
#      VERSION: 1.0.0
#    REFERENCE: https://askubuntu.com/a/272495
#
#===============================================================================

set -o errexit
set -o pipefail
set -o nounset

sed -i '/^ERRFILE=\$HOME\/\.xsession-errors$/ s/^/#/' /etc/X11/Xsession
