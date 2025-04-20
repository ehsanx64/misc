APP=hello64

run: build
	./${APP}

build:
	nasm -felf64 main.asm
	ld -o ${APP} main.o

clean:
	rm main.o ${APP}
