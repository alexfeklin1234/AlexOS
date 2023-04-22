nasm bootloader.asm -f bin -o bootloader.bin
qemu-system-x86_64 bootloader.bin
rm bootloader.bin