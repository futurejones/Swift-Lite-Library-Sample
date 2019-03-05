# Swift-Lite-Library-Sample
Template for Swift-Lite library

## Build Instructions
* Clone repo `git clone https://github.com/futurejones/Swift-Lite-Library-Sample.git`
* Open the `Sample_Library` directory `cd Swift-Lite-Library-Sample/Sample_Library`
* Add the required source files to the `Source` directory
* Build library (*NOTE: Change "MyLibrary" to the name of your library*)  
`swiftc -emit-library -emit-module -parse-as-library -module-name MyLibrary Source/*.swift`
* Copy the `lib.so`, `.swiftdoc` and `.swiftmodule` files to `myLibrary/usr/lib/` directory.
* Rename `myLibrary` directory to the name you want your `.deb` package to be called.(*NOTE: This can be different to your library name*)
* Edit the `control` file as required.
* Build the `.deb` package (*NOTE: Change "myLibrary" to the name of your directory*)  
`dpkg-deb --build myLibrary`

## Install Instructions
* `sudo dpkg -i myLibrary.deb` or `sudo dpkg --install myLibrary.deb`

## Uninstall / Remove
* `dpkg -r myLibrary` or `dpkg --remove myLibrary`
