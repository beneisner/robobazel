load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_openblas(use_cmake):
    if use_cmake:
        build_file = "@//third_party/openblas:CMAKE.bazel"
    else:
        build_file = "@//third_party/openblas:BUILD.bazel"
    
    http_archive(
        name = "openblas",
        build_file = build_file,
        sha256 = "e8ba64f6b103c511ae13736100347deb7121ba9b41ba82052b1a018a65c0cb15",
        strip_prefix = "OpenBLAS-0.3.2",
        urls = ["https://github.com/xianyi/OpenBLAS/archive/v0.3.2.tar.gz"],
    )
