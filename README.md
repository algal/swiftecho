# Swift Echo

## What's this?

Basic stuff here, but this little project illustrates a few things:

- how to setup a Swift project so you can compile on OSX and Linux
  using docker, using make to drive the Swift Package Manager
- some basic interop between Swift and C-oriented system API
- how to read from a pipe one line at a time, on Linux and OSX
- how to read from stdin specifically.

Things to try:

```sh
make build_osx
make run_osx # then type a line and have it echoed back
make build_linux # if you have Docker installed...
make run_linux
swift package generate-xcodeproj # to edit in Xcode
```


