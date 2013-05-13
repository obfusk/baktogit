[]: {{{1

    File        : README.md
    Maintainer  : Felix C. Stegerman <flx@obfusk.net>
    Date        : 2013-05-13

    Copyright   : Copyright (C) 2013  Felix C. Stegerman
    Version     : 0.2.1

[]: }}}1

## Description
[]: {{{1

  baktogit - backup w/ git

  baktogit incrementally backups files and directories to a git
  repository -- mostly intended for configuration files.  A .gitignore
  file can be used to exclude files from being committed (but not from
  being copied).  If requested, baktogit will also push to a remote.

  You may also be interested in etckeeper [2]; in contrast to baktogit
  (which copies configuration files to a git repository), etckeeper
  keeps /etc itself in version control.

### Security Warning

  You should be careful about including files like /etc/shadow that
  must remain secret; you should probably `chmod 700` the directory
  containing your repository, and be very careful with .git/, clones,
  and remotes; the etckeeper [2] README has more information on the
  security implications of keeping these kinds of files in version
  control.

[]: }}}1

## Usage
[]: {{{1

### Install

    $ mkdir -p /opt/src
    $ git clone https://github.com/noxqsgit/baktogit.git \
      /opt/src/baktogit

### Run

    $ export BAKTOGIT_REPO=/path/to/repo  # must be a git repo
    $ export BAKTOGIT_PUSH=yes            # to push as well
    $ export VERBOSE=yes                  # to be verbose

    $ /opt/src/baktogit/baktogit.bash <file-or-dir(s)> ...
                                          # absolute paths!

### Cron

    $ cp -i /opt/src/baktogit/baktogit.cron.sample \
      /etc/cron.daily/baktogit
    $ vim /etc/cron.daily/baktogit
    $ chmod +x /etc/cron.daily/baktogit

  You may also want to combine baktogit with mailer [3], to send a
  report per email.

[]: }}}1

## License
[]: {{{1

  GPLv2 [1].

[]: }}}1

## References
[]: {{{1

  [1] GNU General Public License, version 2
  --- http://www.opensource.org/licenses/GPL-2.0

  [2] etckeeper
  --- https://github.com/joeyh/etckeeper

  [3] mailer
  --- https://github.com/noxqsgit/mailer

[]: }}}1

[]: ! ( vim: set tw=70 sw=2 sts=2 et fdm=marker : )
