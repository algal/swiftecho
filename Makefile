TARGET=swiftecho

clean_linux:
	docker run \
               --rm \
               --volume "$(shell pwd)/:/src" \
               --workdir /src \
               ibmcom/kitura-ubuntu \
               swift build -v --build-path ./.build_linux  --clean

build_linux:
	mkdir -p .build_linux
	docker run \
               --rm \
               --volume "$(shell pwd)/:/src" \
               --workdir /src \
               ibmcom/kitura-ubuntu \
               swift build -v --build-path ./.build_linux

run_linux: 
	docker run \
               -it \
               --rm \
               --volume "$(shell pwd)/:/src" \
               --workdir /src \
               ibmcom/kitura-ubuntu \
               .build_linux/debug/$(TARGET)

clean_osx:
	swift build -v --clean

build_osx:
	swift build -v

run_osx:
	.build/debug/$(TARGET)

build: build_linux build_osx

clean: clean_linux clean_osx

