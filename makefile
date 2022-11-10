

run: build
	./build/aes

build:
	mkdir build
	nvcc aes.cu -o build/aes