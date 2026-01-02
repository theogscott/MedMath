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
        .package(
            //path: "../BasicMath" // relative path to BasicMath directory
            
            // 1️⃣ The HTTPS URL of the repo that hosts BasicMath
            url: "https://github.com/theogscott/BasicMath.git",
            
            // 2️⃣ The version rule – choose whichever works for you
            //   .exact("1.0.0")         // exactly this tag/commit
            //   .upToNextMajor(from: "1.0.0")
            //   .upToNextMinor(from: "1.2.0")
               //.branch("main")           // for a rolling dev branch
            //   .revision("a1b2c3d")      // a specific commit SHA
            from: "1.0.0"
            )
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
