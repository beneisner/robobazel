load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_eigen(use_cmake):
    if use_cmake:
        build_file = "@//third_party/eigen:CMAKE.bazel"
    else:
        build_file = "@//third_party/eigen:BUILD.bazel"

    http_archive(
        name = "eigen",
        build_file = build_file,
        strip_prefix = "eigen-git-mirror-3.3.5",
        urls = ["https://github.com/eigenteam/eigen-git-mirror/archive/3.3.5.tar.gz"],
        sha256 = "992855522dfdd0dea74d903dcd082cdb01c1ae72be5145e2fe646a0892989e43",
    )
