// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "DateToolsSwift",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .macOS(.v10_13),
    ],
    products: [
        .library(name: "DateToolsSwift", targets: ["DateToolsSwift"]),
        .library(name: "DateToolsObjc", targets: ["DateToolsObjc"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "DateToolsSwift",
            path: "DateToolsSwift/DateTools",
            resources: [.copy("DateTools.bundle")],
            swiftSettings: [.define("PACKAGE_MANAGER")]
        ),
        .target(
            name: "DateToolsObjc",
            path: "DateTools/DateTools",
            resources: [.copy("DateTools.bundle")],
            publicHeadersPath: ".",
            cSettings: [.define("PACKAGE_MANAGER")]
        ),
        .testTarget(
            name: "DateToolsSwiftTests",
            dependencies: ["DateToolsSwift"],
            path: "DateToolsSwift/Tests/PackageTests"
        ),
        .testTarget(
            name: "DateToolsObjcTests",
            dependencies: ["DateToolsObjc"],
            path: "DateToolsSwift/Tests/PackageTestsObjc"
        )
    ]
)
  
