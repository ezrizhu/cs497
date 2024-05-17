# Proc FS
`./tests/procfs.sh` outputs result files to out/root
Then, use your favorite diff tool to visually inspect the differences.

```
vim -d debian.out.result alma.out.result  alpine.out.result  arch.out.result  centos.out.result fedora.out.result
vim -d debian.out.result gentoo.out.result  oracle.out.result  rhel.out.result  rocky.out.result  ubuntu.out.result
```

![procfs diff part 1](img/procfs-1.png)
![procfs diff part 2](img/procfs-2.png)
