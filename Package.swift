// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pansidaxian",
    /*products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "pansidaxian",
            targets: ["pansidaxian"]),
    ],*/
    dependencies: [
    	.package(url: "https://github.com/PerfectlySoft/Perfect-CURL.git", from: "3.0.6"),
        .package(url: "https://github.com/PerfectlySoft/Perfect-XML.git", from: "3.1.3")
        //.package(url: "https://github.com/gao8954/libcef.git",from:"1.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "pansidaxian",
            dependencies: ["PerfectCURL","PerfectXML"]),
        //.testTarget(
        //    name: "Tests",
        //    dependencies: ["pansidaxian","PerfectCURL","PerfectXML"]),
    ]
)
