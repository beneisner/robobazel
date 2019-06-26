load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_libtiff(use_cmake):
    if use_cmake:
        build_file = "@//third_party/libtiff:CMAKE.bazel"
    else:
        build_file = "@//third_party/libtiff:BUIlD.bazel"

    http_archive(
        name = "libtiff",
        build_file = build_file,
        strip_prefix = "libtiff-v4.0.10",
        sha256 = "5e26756519826b3c852887bc14d6dca95145edf0198fbd8ad7c8fbbed91abff3",
        urls = [
            "https://gitlab.com/libtiff/libtiff/-/archive/v4.0.10/libtiff-v4.0.10.tar.gz",
        ],
    )
