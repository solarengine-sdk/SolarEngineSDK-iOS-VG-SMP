# SolarEngineSDK-VG for iOS & macOS

Official SolarEngineSDK for iOS and macOS (VG Version - 海外版本).

## Requirements

- iOS 11.0+
- macOS 11.0+
- Xcode 12.0+
- Swift 5.3+

## Installation

### Swift Package Manager

#### Via Xcode

1. In Xcode, go to **File** > **Add Packages...**
2. Enter the repository URL:

   ```
   https://github.com/solarengine-sdk/SolarEngineSDK-iOS-VG-SMP
   ```

3. Select the version (e.g., `1.3.1` or later)
4. Click **Add Package**

**Important**: Add `-ObjC` to **Build Settings** > **Other Linker Flags** in your project. This is required for Objective-C categories.

#### Via Package.swift

Add the following to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/solarengine-sdk/SolarEngineSDK-iOS-VG-SMP", from: "1.3.1")
]
```

Then add it to your target:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "SolarEngineSDK-VG", package: "SolarEngineSDK-iOS-VG-SMP")
        ]
    )
]
```

### Configuration (Required)

Add `-ObjC` to **Other Linker Flags** in your project:

1. Select your **target** in Xcode (not the project)
2. **Build Settings** > search "Other Linker Flags"
3. Double-click the value > click **+** > enter `-ObjC`
