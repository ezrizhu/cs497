# test machines

These are the machines we're testing against.

```
λ ./tests/uname.sh
alma.out: Linux alma9.localdomain 5.14.0-362.13.1.el9_3.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Dec 21 07:12:43 EST 2023 x86_64 x86_64 x86_64 GNU/Linux
alpine.out: Linux alpine318.localdomain 6.1.70-0-virt #1-Alpine SMP PREEMPT_DYNAMIC Tue, 02 Jan 2024 10:24:21 +0000 x86_64 Linux
arch.out: Linux archlinux 6.8.8-arch1-1 #1 SMP PREEMPT_DYNAMIC Sun, 28 Apr 2024 15:59:47 +0000 x86_64 GNU/Linux
centos.out: Linux centos7.localdomain 3.10.0-1160.105.1.el7.x86_64 #1 SMP Thu Dec 7 15:39:45 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
debian.out: Linux debian12.localdomain 6.1.0-17-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.69-1 (2023-12-30) x86_64 GNU/Linux
fedora.out: Linux fedora38.localdomain 6.6.8-100.fc38.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Dec 21 04:01:45 UTC 2023 x86_64 GNU/Linux
gentoo.out: Linux gentoo.localdomain 6.1.69-gentoo-dist #1 SMP PREEMPT_DYNAMIC Wed Dec 20 18:24:10 -00 2023 x86_64 Intel Xeon E3-12xx v2 (Ivy Bridge, IBRS) GenuineIntel GNU/Linux
oracle.out: Linux oracle7.localdomain 3.10.0-1160.105.1.0.1.el7.x86_64 #1 SMP Tue Nov 21 18:07:48 PST 2023 x86_64 x86_64 x86_64 GNU/Linux
rhel.out: Linux rhel9.localdomain 5.14.0-362.8.1.el9_3.x86_64 #1 SMP PREEMPT_DYNAMIC Tue Oct 3 11:12:36 EDT 2023 x86_64 x86_64 x86_64 GNU/Linux
rocky.out: Linux rocky9.localdomain 5.14.0-362.13.1.el9_3.x86_64 #1 SMP PREEMPT_DYNAMIC Wed Dec 13 14:07:45 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
ubuntu.out: Linux ubuntu2204.localdomain 5.15.0-91-generic #101-Ubuntu SMP Tue Nov 14 13:30:08 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
```

RHEL (Red Hat Enterprise Linux) is one of the most popular Linux distribution
developed by Red Hat. CentOS was one of the most common, free Linux distro until
it was discontinued by Red Hat. Rocky Linux emerged to become it's community
maintained successor. Fedora is also a community maintained desktop orientated
rhel derivative. Oracle and Alma linux are both also rhel derivatives.

Debian is another one of the most popular Linux distributions, it is community
maintained, with Ubuntu being one of the very popular corporate supported
derivative. 

Alpine Linux is another community maintained Linux distribution that is focused
on simplicity. It uses a busybox instead of coreutils, and musl libc instead of
glibc. It is very popular in container runtimes as it is very light weight.

Lastly, Arch and Gentoo are both power user focused Linux distributions that
offers an incredible amount of user customization. They are both quite different
as well.
