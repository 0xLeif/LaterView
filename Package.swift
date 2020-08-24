// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LaterView",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "LaterView",
            targets: ["LaterView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/0xLeif/Later", from: "0.2.0"),
        .package(url: "https://github.com/0xLeif/SwiftUIKit", from: "1.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "LaterView",
            dependencies: [
                "Later",
                "SwiftUIKit"
            ]),
        .testTarget(
            name: "LaterViewTests",
            dependencies: ["LaterView"]),
    ]
)
