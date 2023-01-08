// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "product-admin-dto",
    platforms: [
        .macOS(.v12),
        .iOS(.v13),
    ],
    products: [
        .library(name: "ProductAdminDto", targets: ["ProductAdminDto"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ViktorChernykh/product-dto.git", from: "0.0.1"),
    ],
    targets: [
        .target(name: "ProductAdminDto", dependencies: [
            .product(name: "ProductDto", package: "product-dto"),
        ]),
    ]
)
