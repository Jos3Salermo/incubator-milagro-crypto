copy amcl_.h amcl.h

gcc -std=c99 -c -O3 big.c
gcc -std=c99 -c -O3 fp.c
gcc -std=c99 -c -O3 ecp.c
gcc -std=c99 -c -O3 hash.c
gcc -std=c99 -c -O3 rand.c
gcc -std=c99 -c -O3 aes.c
gcc -std=c99 -c -O3 gcm.c
gcc -std=c99 -c -O3 oct.c
gcc -std=c99 -c -O3 rom.c

gcc -std=c99 -c -O3 ff.c

del amcl.a
ar rc amcl.a big.o fp.o ecp.o hash.o ff.o
ar r amcl.a rand.o aes.o gcm.o oct.o rom.o

gcc -std=c99 -O3 testecm.c ecdh.c amcl.a -o testecm.exe
gcc -std=c99 -O3 testecdh.c ecdh.c amcl.a -o testecdh.exe
gcc -std=c99 -O3 testrsa.c rsa.c amcl.a -o testrsa.exe

del amcl.h
del *.o
