# vm_max_map_count

This one is more recent, certain Windows games crash on Linux due to a not high
enough maximum number of memory map areas a process may have. To improve Linux
on Desktop's experience for many gamers, distros have begun to increase that
setting by default.

[Arch Announcement](https://archlinux.org/news/increasing-the-default-vmmax_map_count-value/)

[Arch Mailing List](https://lists.archlinux.org/archives/list/arch-dev-public@lists.archlinux.org/thread/5GU7ZUFI25T2IRXIQ62YYERQKIPE3U6E/)

[Ubuntu bug
report](https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2057792)

[Ubuntu
Patch](https://git.launchpad.net/ubuntu/+source/procps/commit/?h=applied/2%254.0.4-4ubuntu2&id=b4a4a046cf018a942598e55f3fbc7b5ef474f676)

[Fedora wiki on the
change](https://fedoraproject.org/wiki/Changes/IncreaseVmMaxMapCount)

[NixOS PR](https://github.com/NixOS/nixpkgs/pull/238459)


See also:
[kernel docs on
max-mem-count](https://docs.kernel.org/admin-guide/sysctl/vm.html#max-map-count)
