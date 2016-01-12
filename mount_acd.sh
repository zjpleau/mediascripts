/usr/local/bin/acdcli mount /home/zachary/mounts/.acd-sorted
cat /home/zachary/encfspwd | ENCFS6_CONFIG='/home/zachary/encfs.xml' encfs -S /home/zachary/mounts/.acd-sorted /home/zachary/mounts/acd-sorted
cat /home/zachary/encfspwd | ENCFS6_CONFIG='/home/zachary/encfs.xml' encfs -S /home/zachary/mounts/.local-sorted /home/zachary/mounts/local-sorted
unionfs-fuse -o cow /home/zachary/mounts/local-sorted=RW:/home/zachary/mounts/acd-sorted=RO /home/zachary/mounts/sorted/
