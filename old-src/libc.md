# libc

Most of the time we assume it would be fine if we are just compiling against
glibc, however, in some cases, especially ones that runs your application in a
alpine docker container, it may need to be compiled to musl libc.

There may also be other small tweaks that the upstream makes to glibc.

```
λ ./tests/ldd.sh
alma.out -> ldd (GNU libc) 2.34
alpine.err -> musl libc (x86_64)
arch.out -> ldd (GNU libc) 2.39
centos.out -> ldd (GNU libc) 2.17
debian.out -> ldd (Debian GLIBC 2.36-9+deb12u3) 2.36
fedora.out -> ldd (GNU libc) 2.37
gentoo.out -> ldd (Gentoo 2.37-r7 (patchset 10)) 2.37
oracle.out -> ldd (GNU libc) 2.17
rhel.out -> ldd (GNU libc) 2.34
rocky.out -> ldd (GNU libc) 2.34
ubuntu.out -> ldd (Ubuntu GLIBC 2.35-0ubuntu3.5) 2.35
```
