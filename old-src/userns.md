# Userspace Namespaces

The security of userspace linux namespaces has always been under debate. For a
while, a few distros had it disabled via a kernel patch.

```
λ ./tests/userns_clone.sh
arch.out -> kernel.unprivileged_userns_clone = 1
debian.out -> kernel.unprivileged_userns_clone = 1
ubuntu.out -> kernel.unprivileged_userns_clone = 1
```

Although now, they have now been reverted back to default allowed.

[Arch
Source](https://gitlab.archlinux.org/archlinux/packaging/packages/linux-lts/-/blob/main/0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-C.patch)

[Debian Patch](https://salsa.debian.org/kernel-team/linux/-/blob/master/debian/patches/debian/add-sysctl-to-disallow-unprivileged-CLONE_NEWUSER-by-default.patch)

[See also](https://superuser.com/a/1122977)
