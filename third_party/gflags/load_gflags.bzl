load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_gflags():
    http_archive(
        name = "com_github_gflags_gflags",
        urls = [ "https://github.com/gflags/gflags/archive/master.zip" ],
        strip_prefix = "gflags-master"
    )
