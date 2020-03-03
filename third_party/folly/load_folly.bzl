load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_folly(use_cmake):
    if use_cmake:
        build_file = "@//third_party/folly:CMAKE.bazel"
    else:
        build_file = "@//third_party/folly:BUILD.bazel"

    http_archive(
        name = "com_facebook_folly",
        build_file = build_file,
        strip_prefix = "folly-master",
        urls = ["https://github.com/facebook/folly/archive/master.zip"],
    )
