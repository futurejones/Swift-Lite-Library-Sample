// A Swift-Lite Library Template
// MyLibrary

import Glibc
import Foundation

// print "Hello World!" message
public func hello() {
    print("Hello World!")
}

// print the date
public func today() {
    print(Date())
}

// print some interesting numbers with 0.5sec delay between prints
public func printNumbers() {
    for i in 1...10 {
        usleep(500000)
        print(i * i * i * i * i)
    }
}