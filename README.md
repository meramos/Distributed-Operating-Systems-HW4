# Distributed-Operating-Systems-HW4
Code for HW4 of Distributed Operating Systems CS-570 Course, UKY

This program simulates a Simple Stateful Network File Server that supports the remote file service model.
The server and client are implemented as Sun RPC (which is achieved by using the rpgen command in UNIX).
The virtual disk is a UNIT filed called disk.dat. The metadata of the users and files in the disk is
stored in the file metadata.dat. The virtual disk is 10MB big and may accommodate a maximum of 10 users.
Each user has a maximum of 1 directory. Each file is 64 blocks, and each block is 512 bytes, which means
that each file is 64*512 = 32,768 bytes. The disk is 1000000 bytes, so it can fit a total of 10000000 / 32,768
= 305 files. Since each user can only have 1 directory, and their can only be a maximum of 10 users, this
mean that each directory can fit 305/10 ~ 30 files. (note: these values concerning the memory space in the
disk and for users, files, etc. is stored in a global struct variable called theDisk, in the program).

To run the program, you must open 2 terminals (login with the same username and to the same host). Then write:

> make

in any of the two terminals to compile the files. Then, run the server on one terminal:

> ./server

and run the client on another terminal

> ./client

Server and client do not need any parameters.

To test the code, you you the file functions from within client.c by calling the wrapper functions
Open(), Close(), List(), Delete(), Write(), Read(). To test again and again, keep changing client.c
and running it. The server should be left running for all that time, because if you kill it then 
the file table will be erased. The data stored into the disk won't be erased, though.

