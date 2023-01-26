CC=nvcc
CFLAGS=-I.
%.o: %.cu %.c  $(DEPS)
	$(CC)  -cu -o $@ $< $(CFLAGS)

lab1: main.o 
	nvcc -arch=sm_30 -o lab1 main.cu

main.o: main.o
	nvcc -arch=sm_30 -c main.cu

clean:
	rm -r *.o lab1