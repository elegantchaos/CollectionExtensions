// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "CollectionExtensions",
    platforms: [
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "CollectionExtensions",
            targets: ["CollectionExtensions"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CollectionExtensions",
            dependencies: []),
        .testTarget(
            name: "CollectionExtensionsTests",
            dependencies: ["CollectionExtensions"]),
    ]
)
