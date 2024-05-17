# Sudo Secure Path

Sudo secure path is the path that is used when a user uses sudo.

When you write an administrative tool and expects something to be only executed
with root permissions, you might install something to one of the sbin
directories.

One notable divergence is that on any of the RHEL derivatives, `/usr/loca/bin`
is not included in sbin, while every other distro we tested with has it in the
secure path.

```
λ ./tests/secure_path.sh
alma.out: /sbin:/bin:/usr/sbin:/usr/bin
alpine.out: "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
arch.out: "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
centos.out: /sbin:/bin:/usr/sbin:/usr/bin
debian.out: "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
fedora.out: /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/snapd/snap/bin
gentoo.out: "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
oracle.out: /sbin:/bin:/usr/sbin:/usr/bin
rhel.out: /sbin:/bin:/usr/sbin:/usr/bin
rocky.out: /sbin:/bin:/usr/sbin:/usr/bin
ubuntu.out: "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
```
