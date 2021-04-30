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
        .package(name: "XCEPipeline", url: "https://github.com/XCEssentials/Pipeline", from: "3.3.0")
    ],
    targets: [
        .target(
            name: "Core",
            dependencies: [
                "XCEPipeline"
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