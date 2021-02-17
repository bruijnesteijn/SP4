// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SP4",
    defaultLocalization: "en",
    platforms: [.iOS(.v14)],

    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SP4",
            targets: ["SP4"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("5.0.0")),
        .package(url: "https://github.com/realm/realm-cocoa.git", .upToNextMajor(from: "5.4.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SP4",
            dependencies: []),
        .testTarget(
            name: "SP4Tests",
            dependencies: ["SP4"]),
    ]
)
