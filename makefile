run: build
	./build/aes

build: aes.cu
	mkdir -p build
	nvcc aes.cu -o build/aes

clean:
	rm -rf ./build