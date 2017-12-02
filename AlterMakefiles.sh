# !/bin/bash
tmp=$(find . -name "Makefile")
sed -i 's/.*CUDA_PATH.*?=.*\/n/CUDA_PATH ?=/g' $tmp
sed -i 's/.*HOST_COMPILER.*?=.*/HOST_COMPILER ?= clang-3.8 -lstdc++ -lm -L \/usr\/lib\/x86_64-linux-gnu/g' $tmp
sed -i 's/$(CUDA_PATH)\/bin\/nvcc/nvcc/g' $tmp

tmp=$(find . -name "findgllib.mk")
sed -i 's/.*GLLIB.*:=.*/GLPATH := \/usr\/lib\/x86_64-linux-gnu\nGLLINK := -L \/usr\/lib\/x86_64-linux-gnu\nDFLT_PATH :=\nGLLIB := \/usr\/lib\/x86_64-linux-gnu\/libGL.so/g' $tmp
sed -i 's/.*GLULIB.*:=.*/GLULIB := \/usr\/lib\/x86_64-linux-gnu\/libGLU.so/g' $tmp
sed -i 's/.*X11LIB.*:=.*/X11LIB := \/usr\/lib\/x86_64-linux-gnu\/libX11.so/g' $tmp

tmp=$(find . -name "findgleslib.mk")
sed -i 's/.*EGLLIB.*:=.*/GLPATH := \/usr\/lib\/x86_64-linux-gnu\nGLLINK := -L \/usr\/lib\/x86_64-linux-gnu\nDFLT_PATH :=\nEGLLIB := \/usr\/lib\/x86_64-linux-gnu\/libEGL.so/g' $tmp
sed -i 's/.*GLESLIB.*:=.*/GLESLIB := \/usr\/lib\/x86_64-linux-gnu\/libGLESv2.so/g' $tmp
sed -i 's/.*X11LIB.*:=.*/X11LIB := \/usr\/lib\/x86_64-linux-gnu\/libX11.so/g' $tmp
