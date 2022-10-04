// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterTS",
    products: [
        .library(name: "TreeSitterTS", targets: ["TreeSitterTS"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterTS",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
                    "LICENSE",
                    "package.json",
                    "README.md",
                    "script",
                    "tsx/src/grammar.json",
                    "tsx/src/node-types.json",
                    "typescript/src/grammar.json",
                    "typescript/src/node-types.json",
                    "common",
                ],
                sources: [
                    "tsx/src/parser.c",
                    "tsx/src/scanner.c",
                    "typescript/src/parser.c",
                    "typescript/src/scanner.c",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("tsx/src"), .headerSearchPath("typescript/src")])
    ]
)