// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Showcase",
    platforms: [
       .macOS(.v12)
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.88.0"),
        .package(url: "https://github.com/vapor-community/HTMLKit.git", from: "3.0.0-alpha.7")
    ],
    targets: [
        .executableTarget(
            name: "Showcase",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "HTMLKit", package: "HTMLKit")
            ],
            swiftSettings: [
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ]
        ),
        .testTarget(name: "ShowcaseTests", dependencies: ["Showcase"])
    ]
)
