load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def load_zlib(use_cmake = False):

    if use_cmake:
        build_file = "@//third_party/zlib:CMAKE.bazel"
    else:
        build_file = "@//third_party/zlib:BUILD.bazel"

    http_archive(
        name = "zlib",
        build_file = build_file,
        sha256 = "4ff941449631ace0d4d203e3483be9dbc9da454084111f97ea0a2114e19bf066",
        strip_prefix = "zlib-1.2.11",
        urls = [
            "https://zlib.net/zlib-1.2.11.tar.xz",
        ],
    )
