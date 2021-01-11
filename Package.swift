// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SectionedList",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "SectionedList",
            targets: ["SectionedList"]
        ),
    ],
    targets: [
        .target(
            name: "SectionedList"
        ),
        .testTarget(
            name: "SectionedListTests",
            dependencies: ["SectionedList"]
        ),
    ]
)
