// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KrakenKit",
    platforms: [.macOS(.v10_14)],
    products: [
        .library(name: "Proto", type: .dynamic, targets: ["Proto"]),
        .library(name: "KrakenKit", type: .dynamic, targets: ["KrakenKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.2.0"),
        .package(url: "https://github.com/KrakenCL/LibPNG.git", from: "0.0.3")
    ],
    targets: [
        .target(
            name: "Proto",
            dependencies: ["SwiftProtobuf"]),
        .target(
            name: "KrakenKit",
            dependencies: ["Proto", "LibPNG"]),
        .testTarget(
            name: "KrakenKitTests",
            dependencies: ["KrakenKit"]),
    ]
)
