.PHONY: all build clean

all:
	clean build

build:
	cmake -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain_file.cmake \
		  -B build/ -S . && \
		  cmake --build build/

clean:
	rm -rf build/