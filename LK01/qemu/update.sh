#!/bin/bash 

cd root; cpio -idv < ../rootfs.cpio
find . -print0 | cpio -o --format=newc --null --owner=root > ../rootfs_updated.cpio

