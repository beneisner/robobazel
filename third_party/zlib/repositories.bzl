load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("//third_party/rules_foreign_cc:repositories.bzl", "rules_foreign_cc_repositories")

def zlib_repositories():
    rules_foreign_cc_repositories()

    maybe(
        http_archive,
        name = "zlib",
        build_file = Label("//third_party/zlib:BUILD.zlib.bazel"),
        sha256 = "4ff941449631ace0d4d203e3483be9dbc9da454084111f97ea0a2114e19bf066",
        strip_prefix = "zlib-1.2.11",
        urls = [
            "https://zlib.net/zlib-1.2.11.tar.xz",
        ],
    )
