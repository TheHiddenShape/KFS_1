# KFS_1

### Building cross compiler with docker
```docker build -t hekaos .```

### Import kernel stuff into host environment
```docker cp [container]:/root/kernel /home/[user]/```

### Boot the kernel with binary or iso format
```run-iso: qemu-system-i386 -cdrom hekaos.iso```  
```run-bin: qemu-system-i386 -kernel hekaos.bin```
