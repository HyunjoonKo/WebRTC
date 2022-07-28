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
            checksum: "66fa7fa15476e67c0c5ea066e406952b7c5920bc1c599e95e01baf74282017f2"
        )        
    ]
)
