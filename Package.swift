// swift-tools-version: 6.2.0
import PackageDescription

let package = Package(
    name: "BbAppIntent",
    defaultLocalization: "en",
    platforms: [.iOS("18.5"), .macOS("15.5"), .tvOS("18.0")],
    products: [.library(name: "BbAppIntent", targets: ["BbAppIntent"])],
    dependencies: [
        .package(
            url: "https://github.com/thebbapp/swift-package-bb-app-author-schema.git",
            from: "0.1.0"
        ),
        .package(url: "https://github.com/thebbapp/swift-package-bb-app-task.git", from: "0.1.0"),
    ],
    targets: [
        .binaryTarget(
            name: "BbAppIntent",
            url:
                "https://github.com/thebbapp/swift-package-bb-app-intent/releases/download/v0.1.0/BbAppIntent.xcframework.zip",
            checksum: "72652f5dbb67940a1fadb07901a2d0d04fb05ff00fe290f7e0f44f7a1fbf61ec"
        )
    ],
    swiftLanguageModes: [.v6]
)
