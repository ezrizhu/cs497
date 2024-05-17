# init

Systemd is a very common init system, however, for alpine, gentoo, and some
other obscure distros, you may need to supply another form of service file. Such
as a less declarative format i.e., a script.

```
λ ./tests/init.sh
alma.out -> systemd
alpine.out -> busybox
arch.out -> systemd
centos.out -> systemd
debian.out -> systemd
fedora.out -> systemd
gentoo.out -> init
oracle.out -> systemd
rhel.out -> systemd
rocky.out -> systemd
ubuntu.out -> systemd
```
