// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dictionary-API",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "Dictionary-API", targets: ["Dictionary-API"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", .upToNextMajor(from:"0.3.0")),
    ],
    targets: [
        .target(
            name: "Dictionary-API",
            dependencies: [
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
                .product(name: "AWSLambdaEvents", package: "swift-aws-lambda-runtime"),
            ],
            resources: [
                .process("Config.plist")
            ]
        ),
    ]
)
