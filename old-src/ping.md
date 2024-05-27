# ping

Sometimes, ping will not work in an unshare namespaced environment.

```
λ ./tests/ping.sh
centos.err -> unshare: unshare failed: Invalid argument
debian.err -> ping: socktype: SOCK_RAW ping: socket: Operation not permitted
gentoo.err -> ping: socktype: SOCK_RAW ping: socket: Operation not permitted
oracle.err -> unshare: unshare failed: Invalid argument
```

However, we're able to pinping exactly why that happens from another experiment.

```
λ ./tests/ping2.sh
alma.out -> net.ipv4.ping_group_range = 0       2147483647
alpine.out -> net.ipv4.ping_group_range = 999   59999
arch.out -> net.ipv4.ping_group_range = 0       2147483647
centos.out -> net.ipv4.ping_group_range = 1     0
debian.out -> net.ipv4.ping_group_range = 1     0
fedora.out -> net.ipv4.ping_group_range = 0     2147483647
gentoo.out -> net.ipv4.ping_group_range = 1     0
oracle.out -> net.ipv4.ping_group_range = 1     0
rhel.out -> net.ipv4.ping_group_range = 0       2147483647
rocky.out -> net.ipv4.ping_group_range = 0      2147483647
ubuntu.out -> net.ipv4.ping_group_range = 0     2147483647
```

This gets the data from sysctl. And we're able to see that centos, debian,
gentoo, and oracle all has the ping group range set to 0 and 1, which are only
privileged groups. Although on Centos and oracle it fails earlier due to the
unshare userspace package lacking one of the flags we're invoking.

However, on userspace in those distros you're able to ping due to the
capabilities set on the ping binary, which was somehow dropped when we enter
into the unshared environment.
