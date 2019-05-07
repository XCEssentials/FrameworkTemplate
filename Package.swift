// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "XCEFrameworkTemplate",
    products: [
        .library(
            name: "XCEFrameworkTemplate",
            targets: [
                "XCEFrameworkTemplateCore"
            ]
        ),
        .library(
            name: "XCEFrameworkTemplateWithOperators",
            targets: [
                "XCEFrameworkTemplateOperators"
            ]
        ),
    ],
    targets: [
        .target(
            name: "XCEFrameworkTemplateCore",
            path: "Sources/Core"
        ),
        .target(
            name: "XCEFrameworkTemplateOperators",
            dependencies: ["XCEFrameworkTemplateCore"],
            path: "Sources/Operators"
        ),
        .testTarget(
            name: "XCEFrameworkTemplateAllTests",
            dependencies: [
                "XCEFrameworkTemplateCore",
                "XCEFrameworkTemplateOperators"
            ],
            path: "Tests/AllTests"
        ),
    ],
    swiftLanguageVersions: [.v4, .v4_2]
)