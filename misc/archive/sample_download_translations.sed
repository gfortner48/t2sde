#!/bin/sed
# normal user will always find their files on our mirrors, so this will be used only by developers

# ac.uk was the only mirror with parted-1.6.20, and it's fast enough
s,^http://ftp.gnu.org/gnu/,http://www.mirror.ac.uk/mirror/ftp.gnu.org/gnu/,

# loadbalancer is working weird these days
s,^http://.*dl.\(sourceforge\|sf\).net/,http://unc.dl.sourceforge.net/,

