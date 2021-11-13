load("//third_party/openssl:setup.bzl", "openssl_setup")
load("//third_party/rules_python:setup.bzl", "rules_python_setup")
load("//third_party/zlib:setup.bzl", "zlib_setup")

def python_setup():
    openssl_setup()
    rules_python_setup()
    zlib_setup()

    native.register_toolchains("@robobazel//third_party/python:python_toolchain")