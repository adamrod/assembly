#!/bin/bash
filename=$1
filename_base="${filename%.*}"

as --32 $filename -o "./build/$filename_base.o"
ld -melf_i386 "./build/$filename_base.o" -o "./build/$filename_base"
