// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "OpenNavigation",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "OpenNavigation",
            targets: ["OpenNavigationPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "OpenNavigationPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/OpenNavigationPlugin"),
        .testTarget(
            name: "OpenNavigationPluginTests",
            dependencies: ["OpenNavigationPlugin"],
            path: "ios/Tests/OpenNavigationPluginTests")
    ]
)