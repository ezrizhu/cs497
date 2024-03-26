> [!CAUTION]
> Negative potential consequences of an action.

## ldd
```
λ for a in *; do echo $a&&cat $a | head -n1; done
is-alpine.err -> musl libc (x86_64) !! err
is-arch.out -> ldd (GNU libc) 2.38
is-aws.out -> ldd (GNU libc) 2.34
is-deb.out -> ldd (Debian GLIBC 2.36-9+deb12u4) 2.36
is-fed.out -> ldd (GNU libc) 2.38
is-rocky.out -> ldd (GNU libc) 2.34
is-ubuntu.out -> ldd (Ubuntu GLIBC 2.35-0ubuntu3.6) 2.35
```

## init
all are systemd, besides alpine, which is busybox

## caps

> [!WARNING]
> running with sudo

![](https://not-a.link/A8r8QRu.png)

## env
too messy, not sure what to do rn
![](https://not-a.link/3kuoxnV.png)

## pkgconfig
```
for a in *.out; do sort $a > $a.sorted; done
```
very different- not sure what to do
![](https://not-a.link/6wP7dv7.png)

## procfs
```
for a in *.out; do sort $a > $a.sorted; done
# rm numbers
for a in *.sorted; do awk '! /^[0-9]+$/' $a > $a.nonum; done;
```
![](https://not-a.link/AcV1Gkt.png)

## python
```
is-alpine.out:Python 3.11.6
is-arch.out:Python 3.11.6
is-rocky.out:Python 3.9.18
```

## root

![](https://not-a.link/9ru1Y42.png)

## secure_path
```
is-alpine.out:# Defaults secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
is-arch.out:# Defaults secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
is-aws.out:Defaults    secure_path = /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/snapd/snap/bin
is-deb.out:Defaults     secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
is-fed.out:Defaults    secure_path = /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/var/lib/snapd/snap/bin
is-rocky.out:Defaults    secure_path = /sbin:/bin:/usr/sbin:/usr/bin
is-ubuntu.out:Defaults  secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
```

## sh
```
λ awk '{print FILENAME ":" $0}' *
is-alpine.out:lrwxrwxrwx 1 root root 12 Jan 25 12:13 /bin/sh -> /bin/busybox
is-arch.out:lrwxrwxrwx 1 root root 4 Jan 16 10:48 /bin/sh -> bash
is-aws.out:lrwxrwxrwx. 1 root root 4 Jan 28  2023 /bin/sh -> bash
is-deb.out:lrwxrwxrwx 1 root root 4 Jan  5  2023 /bin/sh -> dash
is-fed.out:lrwxrwxrwx. 1 root root 4 Jan 22 00:00 /bin/sh -> bash
is-rocky.out:lrwxrwxrwx. 1 root root 4 Jan 23  2023 /bin/sh -> bash
is-ubuntu.out:lrwxrwxrwx 1 root root 4 Mar 23  2022 /bin/sh -> dash
```

## sysctl
> [!TIP]
> very interesting
![](https://not-a.link/AGR9ZhU.png)
![](https://not-a.link/2XvvNEx.png)
![](https://not-a.link/6YX5ZZu.png)

## sysfs
completely same lol
![](https://not-a.link/8kpWBga.png)

## systemdver
![](https://not-a.link/roGV3pp.png)

```
is-arch.out:systemd 255 (255.2-3-arch)
is-aws.out:systemd 252 (252.16-1.amzn2023.0.1)
is-deb.out:systemd 252 (252.22-1~deb12u1)
is-fed.out:systemd 254 (254.8-2.fc39)
is-rocky.out:systemd 252 (252-18.el9.0.1.rocky)
is-ubuntu.out:systemd 249 (249.11-0ubuntu3.12)
```

## uname
```
is-alpine.out:Linux is-alpine 6.6.13-0-lts #1-Alpine SMP PREEMPT_DYNAMIC Wed, 24 Jan 2024 13:26:05 +0000 x86_64 GNU/Linux
is-arch.out:Linux is-arch 6.6.13-1-lts #1 SMP PREEMPT_DYNAMIC Sat, 20 Jan 2024 14:48:01 +0000 x86_64 GNU/Linux
is-aws.out:Linux ip-172-31-0-24.us-east-2.compute.internal 6.1.72-96.166.amzn2023.x86_64 #1 SMP PREEMPT_DYNAMIC Wed Jan 17 00:42:52 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux
is-deb.out:Linux is-deb 6.1.0-17-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.69-1 (2023-12-30) x86_64 GNU/Linux
is-fed.out:Linux is-fed 6.6.13-200.fc39.x86_64 #1 SMP PREEMPT_DYNAMIC Sat Jan 20 18:03:28 UTC 2024 x86_64 GNU/Linux
is-rocky.out:Linux is-rocky 5.14.0-362.18.1.el9_3.x86_64 #1 SMP PREEMPT_DYNAMIC Wed Jan 24 23:11:18 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux
is-ubuntu.out:Linux is-ubuntu 5.15.0-92-generic #102-Ubuntu SMP Wed Jan 10 09:33:48 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux
```
## unshare ping

## userns_clone
```
is-arch.out:kernel.unprivileged_userns_clone = 1
is-deb.out:kernel.unprivileged_userns_clone = 1
is-ubuntu.out:kernel.unprivileged_userns_clone = 1
```

