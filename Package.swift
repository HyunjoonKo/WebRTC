// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "WebRTC",    
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "WebRTC", 
            url: "https://github.com/HyunjoonKo/WebRTC/releases/download/104.5206.275e2683b3/WebRTC.zip",
            checksum: "17bd70d91f5a727ff7895d99a5de57e11a6b7ac57da4f560d9b6bee311122f33"
        )        
    ]
)
