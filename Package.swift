// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Collection",
    platforms: [
        .iOS(.v14),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "Collection",
            targets: ["Collection"]
        ),
    ],
    targets: [
        .target(
            name: "Collection"
        ),
        .testTarget(
            name: "CollectionTests",
            dependencies: ["Collection"]
        ),
    ]
)
