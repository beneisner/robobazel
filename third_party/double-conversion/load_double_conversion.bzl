load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_double_conversion():
    http_archive(
        name = "com_github_google_double_conversion",
        urls = ["https://github.com/google/double-conversion/archive/v3.1.5.tar.gz"],
        strip_prefix = "double-conversion-3.1.5",
    )
