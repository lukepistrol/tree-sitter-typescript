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
                    "corpus",
                    "grammar.js",
                    "LICENSE",
                    "Makefile",
                    "package.json",
                    "README.md",
                    "script",
                    "tsx/src/grammar.json",
                    "tsx/src/node-types.json",
                    "typescript/src/grammar.json",
                    "typescript/src/node-types.json",
                    "common/scanner.h",
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
                cSettings: [.headerSearchPath("src")])
    ]
)