// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnCallFormKit",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "OnCallFormKit",
            targets: ["OnCallFormKit-SPM", "OnCallFormKit-Framework"]),
    ],
    dependencies: [
        .package(name: "Lottie", url: "https://github.com/airbnb/lottie-ios", .exact("3.2.3"))
    ],
    targets: [
        .target(
            name: "OnCallFormKit-SPM",
            dependencies: [
                "Lottie",
            ]),
        .binaryTarget(
            name: "OnCallFormKit-Framework",
            path: "OnCallFormKit.xcframework"
        ),
//        .testTarget(
//            name: "OnCallKitTests",
//            dependencies: ["OnCallKit"]),
    ]
)
