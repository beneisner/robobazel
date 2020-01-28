load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def load_libusb():

    # Libusb source code repository.
    http_archive(
        name = "libusb",
        build_file = "@//third_party/libusb:BUILD.bazel",
        strip_prefix = "libusb-1.0.22",
        sha256 = "3500f7b182750cd9ccf9be8b1df998f83df56a39ab264976bdb3307773e16f48",
        urls = ["https://github.com/libusb/libusb/archive/v1.0.22.tar.gz"],
    )

