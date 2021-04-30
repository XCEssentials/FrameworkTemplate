// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "XCEFrameworkTemplate",
    products: [
        .library(
            name: "XCEFrameworkTemplate",
            targets: [
                "Core"
            ]
        )
    ],
    dependencies: [
        .package(name: "XCEOne", url: "https://github.com/XCEssentials/One", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "Core",
            dependencies: [
                "XCEOne"
            ]
        ),
        .testTarget(
            name: "CoreTests",
            dependencies: [
                "Core"
            ]
        ),
    ]
)