// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "spm-deps",
    dependencies: [
        .package(url: "https://github.com/MessageKit/MessageKit", from: "3.7.0"),
    ]
)
