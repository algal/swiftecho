# Swift Echo

## What's this?

Basic stuff here, but this little project illustrates a few things
that I want to remember for cross-platform Swift development:

- how to setup a Swift Package Manager project that compiles on macOS
  and Linux, using build directives to conditionally import `Glibc` vs
  `Darwin.C`

- how to setup a Makefile that uses Docker so you can test building
  and running on macOS and Linux OS, from the comfort of your macOS
  command line

- basic interop between Swift and C-oriented system API like `getline`

- how to read a pipe one line at a time, e.g., from standard input

Things to try:

```sh
$ make build_osx
$ make run_osx # then type a line and have it echoed back
$ make build_linux # if you have Docker installed...
$ make run_linux
$ swift package generate-xcodeproj # to edit in Xcode
```


