load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("//third_party/openssl:repositories.bzl", "openssl_repositories")
load("//third_party/rules_python:repositories.bzl", "rules_python_repositories")
load("//third_party/zlib:repositories.bzl", "zlib_repositories")

def python_repositories(version = "3.10"):
    openssl_repositories()
    rules_python_repositories()
    zlib_repositories()

    if version == "3.10":
        maybe(
            http_archive,
            name = "python3",
            strip_prefix = "Python-3.10.0",
            urls = [
                "https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz",
            ],
            sha256 = "c4e0cbad57c90690cb813fb4663ef670b4d0f587d8171e2c42bd4c9245bd2758",
            build_file = Label("//third_party/python:BUILD.python.bazel"),
        )
    elif version == "3.9":
        maybe(
            http_archive,
            name = "python3",
            strip_prefix = "Python-3.9.3",
            urls = [
                "https://www.python.org/ftp/python/3.9.3/Python-3.9.3.tgz",
            ],
            sha256 = "3afeb61a45b5a2e6f1c0f621bd8cf925a4ff406099fdb3d8c97b993a5f43d048",
            build_file = Label("//third_party/python:BUILD.python.bazel"),
        )
