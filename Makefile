TARGET=swiftecho

build_linux:
	mkdir -p .build_linux
	docker run \
               --rm \
               --volume "$(shell pwd)/:/src" \
               --workdir /src \
               ibmcom/kitura-ubuntu \
               swift build -v --build-path ./.build_linux

clean_linux:
	docker run \
               --rm \
               --volume "$(shell pwd)/:/src" \
               --workdir /src \
               ibmcom/kitura-ubuntu \
               swift build -v --build-path ./.build_linux  --clean

build_osx:
	swift build -v

clean_osx:
	swift build -v --clean

build: build_linux

run_linux: 
	docker run \
               -it \
               --rm \
               --volume "$(shell pwd)/:/src" \
               --workdir /src \
               ibmcom/kitura-ubuntu \
               .build_linux/debug/$(TARGET)

