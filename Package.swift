// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnCallFormKit",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "OnCallFormKit",
            targets: ["OnCallFormKit"]),
    ],
    dependencies: [
        .package(name: "Lottie", url: "https://github.com/airbnb/lottie-ios", .exact("3.2.3"))
    ],
    targets: [
        .binaryTarget(
            name: "OnCallFormKit",
            path: "OnCallFormKit.xcframework"
        ),
    ]
)
