# Root FS
`./tests/root.sh` outputs result files to out/root

Then, use your favorite diff tool to visually inspect the differences.

```
vim -d debian.out.result alma.out.result  alpine.out.result  arch.out.result  centos.out.result fedora.out.result
vim -d debian.out.result gentoo.out.result  oracle.out.result  rhel.out.result  rocky.out.result  ubuntu.out.result
```

![rootfs diff part 1](img/rootfs-1.png)
![rootfs diff part 2](img/rootfs-2.png)
