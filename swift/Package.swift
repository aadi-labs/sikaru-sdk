// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Sikaru",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "Sikaru",
            targets: ["Sikaru"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Sikaru",
            path: "Sources"
        ),
        .testTarget(
            name: "SikaruTests",
            dependencies: ["Sikaru"],
            path: "Tests"
        )
    ]
)
