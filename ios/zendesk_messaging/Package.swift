// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "zendesk_messaging",
    platforms: [.iOS("14.0")],
    products: [
        .library(name: "zendesk-messaging", targets: ["zendesk_messaging"])
    ],
    dependencies: [
        .package(url: "https://github.com/zendesk/sdk_messaging_ios", exact: "2.36.0")
    ],
    targets: [
        .target(
            name: "zendesk_messaging",
            dependencies: [
                .product(name: "ZendeskSDKMessaging", package: "sdk_messaging_ios")
            ]
        )
    ]
)
