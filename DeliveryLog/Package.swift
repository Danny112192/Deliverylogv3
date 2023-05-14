// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "DeliveryLog",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "DeliveryLog",
            targets: ["DeliveryLog"]),
    ],
    targets: [
        .target(
            name: "DeliveryLog",
            dependencies: []),
        .testTarget(
            name: "DeliveryLogTests",
            dependencies: ["DeliveryLog"]),
    ]
)
