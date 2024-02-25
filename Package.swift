// swift-tools-version:5.3

import PackageDescription

let package = Package(
  
  name: "CodeEditor",

  platforms: [
    .macOS(.v10_15), .iOS(.v13)
  ],

  products: [
    .library(name: "CodeEditor", targets: [ "CodeEditor" ])
  ],
  
  dependencies: [
    .package(url: "https://github.com/envomer/Highlightr", from: "2.1.2")
  ],
           
  targets: [
    .target(name: "CodeEditor", dependencies: [ "Highlightr" ])
  ]
)
