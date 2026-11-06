// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SolarEngineSDK-VG",
    platforms: [
        .iOS(.v11),
        .macOS("11.5")
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SolarEngineSDK-VG",
            targets: ["SolarEngineSDKVGTarget"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Binary target for the xcframework
        .binaryTarget(
            name: "SolarEngineSDKVGBinary",
            url: "https://github.com/solarengine-sdk/SolarEngineSDK-iOS-VG-SMP/releases/download/1.3.3/SolarEngineSDK-VG-1.3.3.xcframework.zip",
            checksum: "730be916a0f57d0c3a9ee228239520bba6c22ffad8c0c74dd369468b2a293926"
        ),
        
        // Wrapper target to add system frameworks and libraries
        .target(
            name: "SolarEngineSDKVGTarget",
            dependencies: ["SolarEngineSDKVGBinary"],
            linkerSettings: [
                // System frameworks
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony", .when(platforms: [.iOS])),
                .linkedFramework("AdSupport", .when(platforms: [.iOS])),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("AdServices", .when(platforms: [.iOS])),
                .linkedFramework("AppTrackingTransparency", .when(platforms: [.iOS])),
                .linkedLibrary("sqlite3")
            ]
        )
    ]
)
