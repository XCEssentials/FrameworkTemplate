// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "XCEFrameworkTemplate",
    products: [
        .library(
            name: "XCEFrameworkTemplate",
            targets: [
                "XCEFrameworkTemplate"
            ]
        )
    ],
    targets: [
        .target(
            name: "XCEFrameworkTemplate",
            path: "Sources/Core"
        ),
        .testTarget(
            name: "XCEFrameworkTemplateAllTests",
            dependencies: [
                "XCEFrameworkTemplate"
            ],
            path: "Tests/AllTests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)