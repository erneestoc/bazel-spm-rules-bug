load("@gazelle//:def.bzl", "gazelle", "gazelle_binary")
load("@rules_swift_package_manager//swiftpkg:defs.bzl", "swift_update_packages")
load(
    "@rules_swift//swift:swift.bzl",
    "swift_library"
)

gazelle_binary(
    name = "gazelle_bin",
    languages = [
        "@rules_swift_package_manager//gazelle",
    ],
)

swift_update_packages(
    name = "swift_update_pkgs",
    gazelle = ":gazelle_bin",
    generate_swift_deps_for_workspace = False,
    update_bzlmod_stanzas = True,
)

swift_library(
    name = "SPMExample",
    deps = ["@swiftpkg_messagekit//:Sources_MessageKit"],
    srcs = glob([
        "Sources/**/*.swift"
    ]),
    linkstatic = True,
    visibility = ["//visibility:public"],
)
