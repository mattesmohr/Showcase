// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Showcase",
    platforms: [
       .macOS(.v12)
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.102.1"),
        .package(url: "https://github.com/vapor-community/HTMLKit.git", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "Showcase",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "HTMLKit", package: "HTMLKit")
            ],
            resources: [
                .process("Resources")
            ],
            swiftSettings: [
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ]
        ),
        .testTarget(name: "ShowcaseTests", dependencies: ["Showcase"])
    ]
)
