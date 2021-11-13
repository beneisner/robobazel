load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def perl_repositories():
    maybe(
        http_archive,
        name = "rules_perl",
        sha256 = "55fbe071971772758ad669615fc9aac9b126db6ae45909f0f36de499f6201dd3",
        strip_prefix = "rules_perl-2f4f36f454375e678e81e5ca465d4d497c5c02da",
        urls = [
            "https://github.com/bazelbuild/rules_perl/archive/2f4f36f454375e678e81e5ca465d4d497c5c02da.tar.gz",
        ],
    )