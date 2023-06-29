// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwiftSoup",
    products: [
        .library(name: "SwiftSoup", targets: ["SwiftSoup"])
    ],
    targets: [
        .target(
            name: "SwiftSoup",
            dependencies: [
                .target(name: "SwiftSoupNonWASI", condition: .when(platforms: [.iOS, .macOS, .tvOS, .macCatalyst, .watchOS]))
            ],
            path: "Sources",
            exclude: ["Info.plist", "InfoMac.plist", "InfotvOS.plist", "InfoWatchOS.plist"]
        ),
        .target(name: "SwiftSoupNonWASI", path: "SourcesNonWASI"),
        .testTarget(name: "SwiftSoupTests", dependencies: ["SwiftSoup"])
    ]
)
