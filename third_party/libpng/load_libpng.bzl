load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_libpng(use_cmake):
    if use_cmake:
        build_file = "@//third_party/libpng:CMAKE.bazel"
    else:
        build_file = "@//third_party/libpng:BUIlD.bazel"

    http_archive(
        name = "libpng",
        build_file = build_file,
        sha256 = "2f1e960d92ce3b3abd03d06dfec9637dfbd22febf107a536b44f7a47c60659f6",
        strip_prefix = "libpng-1.6.34",
        urls = ["http://ftp-osl.osuosl.org/pub/libpng/src/libpng16/libpng-1.6.34.tar.xz"],
    )
