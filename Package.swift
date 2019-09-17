// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "ToznySwish",
  products: [
    .library(
      name: "ToznySwish",
      targets: ["ToznySwish"]
    ),
    .library(
      name: "Swoosh",
      targets: ["Swoosh"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/Quick/Quick", .upToNextMajor(from: "2.0.0")),
    .package(url: "https://github.com/Quick/Nimble", .upToNextMajor(from: "8.0.0")),
  ],
  targets: [
    .target(
      name: "ToznySwish",
      dependencies: []
    ),
    .target(
      name: "Swoosh",
      dependencies: ["ToznySwish"]
    ),
    .testTarget(
      name: "ToznySwishTests",
      dependencies: ["ToznySwish", "Swoosh", "Quick", "Nimble"]
    ),
  ]
)
