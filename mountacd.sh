/usr/local/bin/acdcli mount /mnt/.acd-sorted
cat /home/zachary/encfspwd | ENCFS6_CONFIG='/home/zachary/encfs.xml' encfs -S /mnt/.acd-sorted /mnt/acd-sorted
cat /home/zachary/encfspwd | ENCFS6_CONFIG='/home/zachary/encfs.xml' encfs -S /mnt/.local-sorted /mnt/local-sorted
