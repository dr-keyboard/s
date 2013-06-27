s
=

Dot files management

Many simply git clone their .vim files, this is an attempt to do something
similiar for common configuration files.  With this system, your common
configuration files are replaced with sym-links to
~/s/vim/vim_current/<file_is_here>.

The vim_current directory itself is a symlink to a date stamped folder in that
same directory.  The scripts themselves are simple:

 * ~/s/scripts/chg_vim_sym.sh - allows you to specify desired directory to symlink
vim_current to.
 * ~/s/scripts/new_rev.sh     - creates new revision
 * ~/s/scripts/bak_sym.sh     - creates a backup of the dot files currently being
tracked, to ~/s/backup.
 * ~/s/scripts/del_sym.sh     - deletes all tracked dot files from home directory

=

Dot files that are tracked:

 * .vimrc
 * .vim/
 * .tmux.conf
 * .dircolors
 * .screenrc
 * .bashrc
 * .inputrc

=

**Installation**

To install this, I typically copy my s directory to the home directory of the
user on the machine.

From that point, I execute the following:

 1. ~/s/scripts/bak_sym.sh
 2. cd ~/s/vim/; ~/s/scripts/chg_vim_sym.sh vim_cd ~/s/vim/vim_insert_latest_revision
 3. ~/s/scripts/del_sym.sh
 4. ~/s/scripts/res_sym.sh

=
**Bonus Files**

I have included some extra files that may be useful to you.

 * dl_fma.sh - script to download songs from freemusicarchive, provided a url.
 * yt-dl.sh  - script to download youtube videos
 * yt-dluser.sh - script to download all of the videos of a user
 * yt-watch.sh - script to watch youtube videos streamed
 * yt-mp3dl.sh - script to download a video as an audio mp3 file
 * timer.sh - simple timer that uses sleep

=

**License**

BSD Licensed - http://opensource.org/licenses/bsd-license.php

Copyright (c) 2013, dr-keyboard
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

   Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.
   Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
