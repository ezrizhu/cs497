# kernel config and sysctl

Kernel config, the configuration that the Linux kernel is compiled with, as well
as the runtime kernel parameters(sysctl), can also vary drastically across
distros.

I.e., all RHEL based distros have a lowered swappiness because they're more
optimized for server workloads.

```
alma.out:vm.swappiness = 30
oracle.out:vm.swappiness = 30
centos.out:vm.swappiness = 30
fedora.out:vm.swappiness = 30
rocky.out:vm.swappiness = 30
rhel.out:vm.swappiness = 30
alpine.out:vm.swappiness = 60
arch.out:vm.swappiness = 60
debian.out:vm.swappiness = 60
gentoo.out:vm.swappiness = 60
ubuntu.out:vm.swappiness = 60
```

For this divergence point, we're recording each distro's `sysctl -a` runtime
params, and the `/boot/config-$(uname -r)` kernel config(compiled in).

Please note that arch linux does not come with the config file, and alpine
stores them under a non-standard name under `/boot`, hence why they're not
included in this.

Here, you can see the differences to the system request key, how they're written
in the kernel config (capitalized), and sysctl (lowercase).

```
λ ./tests/sysrq.sh
alma.out
kernel.sysrq = 16
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x1
centos.out
kernel.sysrq = 16
debian.out
kernel.sysrq = 438
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x01b6
fedora.out
kernel.sysrq = 16
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x0
gentoo.out
kernel.sysrq = 0
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x0
oracle.out
kernel.sysrq = 16
rhel.out
kernel.sysrq = 16
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x1
rocky.out
kernel.sysrq = 16
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x1
ubuntu.out
kernel.sysrq = 176
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x01b6
```

There are a lot of other differences, such as the strictness of it's network
protocols, as well as virtual memory parameters. Please also use your favorite
diffing tool in the out directories for `sysctl` and `kernel_config` to explore
the differences.

![sysctl](img/sysctl.png)

See also:

[kernel.org kernel params
docs](https://docs.kernel.org/admin-guide/kernel-parameters.html)

`man 5 proc`
>        /proc/config.gz (since Linux 2.6) This  file  exposes  the
>        configuration options that were used to build the currently running
>        kernel, in the same format as they would be shown in the .config file
>        that resulted when configuring the kernel (using make xconfig, make
>        config, or similar).  The file contents are compressed; view or search
>        them using zcat(1) and zgrep(1).  As long as no changes have been made
>        to the following file, the contents of /proc/config.gz are the same as
>        those provided by:
>
>        cat /lib/modules/$(uname -r)/build/.config
>
>        /proc/config.gz is provided only if the kernel is configured with
>        CONFIG_IKCONFIG_PROC.

From our suite of distros, only arch and gentoo comes with a config.gz in proc.
