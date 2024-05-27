# sh

When writing POSIX compliant scripts for usually systems purposes. We tend to
use /bin/sh as our shabang. However, they're usually just symlinks to other
shell interpreters. Most of the time it is bash with restricted shell (see man
1 bash, under Restricted Shell).

However in other times, it may be to busybox, or dash.

```
λ ./tests/sh.sh
alma.out: /bin/sh -> bash
alpine.out: /bin/sh -> /bin/busybox
arch.out: /bin/sh -> bash
centos.out: /bin/sh -> bash
debian.out: /bin/sh -> dash
fedora.out: /bin/sh -> bash
gentoo.out: /bin/sh -> bash
oracle.out: /bin/sh -> bash
rhel.out: /bin/sh -> bash
rocky.out: /bin/sh -> bash
ubuntu.out: /bin/sh -> dash
```
