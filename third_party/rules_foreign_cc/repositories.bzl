load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_foreign_cc_repositories():
    maybe(
        http_archive,
        name = "rules_foreign_cc",
        strip_prefix = "rules_foreign_cc-e97f24e701cc33c0e4aa360d59b83eca0aa46111",
        sha256 = "040ad10c9f760babdd0ade6746881f76d150e75838a2833342d1f7e245bcec42",
        url = "https://github.com/bazelbuild/rules_foreign_cc/archive/e97f24e701cc33c0e4aa360d59b83eca0aa46111.tar.gz",
    )
