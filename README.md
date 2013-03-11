[]: {{{1

    File        : README.md
    Maintainer  : Felix C. Stegerman <flx@obfusk.net>
    Date        : 2013-03-11

    Copyright   : Copyright (C) 2013  Felix C. Stegerman
    Version     : 0.1.0

[]: }}}1

## Description
[]: {{{1

  baktogit - backup w/ git

  baktogit incrementally backups files and directories to a git
  repository -- mostly intended for configuration files.

[]: }}}1

## Usage
[]: {{{1

    $ export BAKTOGIT_REPO=/path/to/repo  # must be a git repo
    $ export BAKTOGIT_PUSH=yes            # to push as well

    $ baktogit <file-or-dir(s)> ...       # absolute paths!

  NB: you can use a .gitignore file to exclude files.

[]: }}}1

## License
[]: {{{1

  GPLv2 [1].

[]: }}}1

## References
[]: {{{1

  [1] GNU General Public License, version 2
  --- http://www.opensource.org/licenses/GPL-2.0

[]: }}}1

[]: ! ( vim: set tw=70 sw=2 sts=2 et fdm=marker : )
