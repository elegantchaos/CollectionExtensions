// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CollectionExtensions",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10)
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
