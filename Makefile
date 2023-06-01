NVCC = /usr/local/cuda/bin/nvcc

gamma:
	$(NVCC) -I./ -O3 -std=c++11 -w -gencode arch=compute_61,code=sm_61 -odir "." -M -o "gamma.d" "./main.cu"
	$(NVCC) -I./ -O3 -std=c++11 -w --compile --relocatable-device-code=true -gencode arch=compute_61,code=compute_61 -gencode arch=compute_61,code=sm_61 -x cu -o "gamma.o" "main.cu"
	$(NVCC) --cudart static --relocatable-device-code=true -gencode arch=compute_61,code=compute_61 -gencode arch=compute_61,code=sm_61 -link -o "gamma" ./gamma.o

clean:
	rm ./gamma.o ./gamma.d gamma
