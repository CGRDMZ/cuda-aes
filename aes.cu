#include <stdio.h>
#include <iostream>

__global__ void cuda_hello(){
    int i = 0;
    
    printf("hello world from kernel %d :)\n", threadIdx);
    
}

int main() {
    cuda_hello<<<1,32>>>(); 

    cudaDeviceSynchronize();

    cudaDeviceReset();
    return 0;
}