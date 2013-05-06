#!/bin/bash

# --                                                            ; {{{1
#
# File        : baktogit.bash
# Maintainer  : Felix C. Stegerman <flx@obfusk.net>
# Date        : 2013-05-06
#
# Copyright   : Copyright (C) 2013  Felix C. Stegerman
# Licence     : GPLv2
#
# --                                                            ; }}}1

date="$( date +'%F %T' )"
function die () { echo "$@" >&2; exit 1; }

if [[ "$VERBOSE" == [Yy]* ]]; then verbose=-v; else verbose=; fi

[ "$#" -eq 0 ] && die 'no files or directories specified'
[ -e "$BAKTOGIT_REPO"/.git ] || \
  die "\`$BAKTOGIT_REPO' is not a git repository."

# --

pushd "$BAKTOGIT_REPO" >/dev/null || die 'pushd failed'

echo "baktogit --> $BAKTOGIT_REPO" ; echo

for item in "$@"; do
  echo "==> $item <=="
  if [ -d "$item" ]; then
    mkdir -p ./"$item"
    rsync -a $verbose --delete "$item"/ ./"$item"/
  else
    mkdir -p ./"$( dirname "$item" )"
    cp -aT $verbose "$item" ./"$item"
  fi
  echo
done

echo ; git add . ; git add -u ; git commit -m "baktogit @ $date"
echo ; git status ; echo

[[ "$BAKTOGIT_PUSH" == [Yy]* ]] && git push

popd >/dev/null || die 'popd failed'

# vim: set tw=70 sw=2 sts=2 et fdm=marker :
