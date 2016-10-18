#if os(Linux)
  import Glibc
#else
  import Darwin.C
#endif

/**
 Returns a generator of UTF8-encoded lines read from `file`.
 
 Stops at end of file stream, or non UTF-encoding failure.
 
 */
func lineGenerator(file:UnsafeMutablePointer<FILE>) -> AnyIterator<String>
{
  return AnyIterator { () -> String? in
    var line:UnsafeMutablePointer<CChar>? = nil
    var linecap:Int = 0
    defer { free(line) }
    let charactersWritten = getline(&line, &linecap, file)
    
    if charactersWritten > 0 {
      guard let line = line else { return nil }
      return String(validatingUTF8: line)
    }
    else {
      return nil
    }
  }
}

for line in lineGenerator(file:stdin) {
  print(line, separator: "", terminator: "")
}

