// swift-tools-version: 5.7
import PackageDescription
let package = Package(name: "ComputeContract", platforms: [.macOS(.v12)], dependencies: [.package(path: "../../../swift")], targets: [.executableTarget(name: "ComputeContract", dependencies: [.product(name: "Sikaru", package: "swift")])])
