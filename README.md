# Swift Echo

## What's this?

Trivial stuff here, but this little project illustrates a few things:

- how to setup a swift project so you can compile on OSX and Linux using docker
- how to read from a pipe one line at a time, on Linux and OSX
- how to read from stdin specifically.

Things to try:

```sh
make build_osx
make build_linux # if you have Docker installed...
make run_osx # then type a line and have it echoed back
make run_linux
swift package generate-xcodeproj # to edit in Xcode
```


