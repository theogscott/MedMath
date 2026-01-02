// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MedMath",
    
    // MARK: - Platforms you support
    platforms: [
        .iOS(.v15),   // iOS 15+ (or later)
        .macOS(.v13)   // macOS 13+ (Ventura) – adjust if you need an older version
    ],
    
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MedMath",
            targets: ["MedMath"]
        ),
    ],
    dependencies: [
        .package(path: "../BasicMath") // relative path to BasicMath directory
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MedMath"
        ),
        .testTarget(
            name: "MedMathTests",
            dependencies: ["MedMath"]
        ),
    ]
)
