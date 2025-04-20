@echo off

rm %1.exe
as -o %1.o %1.s
gcc -o %1.exe %1.o
rm %1.o
