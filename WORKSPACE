load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

###############################################################################
# Proto-related dependencies.
###############################################################################

# Protobuf.
# http_archive(
#     name = "com_google_protobuf",
#     strip_prefix = "protobuf-3.6.1.3",
#     urls = ["https://github.com/google/protobuf/archive/v3.6.1.3.zip"],
# )

# # rules_proto
# # includes gRPC.
# http_archive(
#     name = "build_stack_rules_proto",
#     sha256 = "5474d1b83e24ec1a6db371033a27ff7aff412f2b23abba86fedd902330b61ee6",
#     strip_prefix = "rules_proto-91cbae9bd71a9c51406014b8b3c931652fb6e660",
#     urls = ["https://github.com/stackb/rules_proto/archive/91cbae9bd71a9c51406014b8b3c931652fb6e660.tar.gz"],
# )

###############################################################################
# C++ dependencies.
###############################################################################

# Google ABSL library.
# http_archive(
#   name = "com_google_absl",
#   urls = ["https://github.com/abseil/abseil-cpp/archive/7c7754fb3ed9ffb57d35fe8658f3ba4d73a31e72.zip"],  # 2019-03-14
#   strip_prefix = "abseil-cpp-7c7754fb3ed9ffb57d35fe8658f3ba4d73a31e72",
#   sha256 = "71d00d15fe6370220b6685552fb66e5814f4dd2e130f3836fc084c894943753f",
# )

###############################################################################
# CMake C++ dependencies.
###############################################################################

# Group the sources of the library so that CMake rule have access to it
# all_content = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])"""

# Rule repository
http_archive(
    name = "rules_foreign_cc",
    strip_prefix = "rules_foreign_cc-master",
    url = "https://github.com/bazelbuild/rules_foreign_cc/archive/master.zip",
)

load("@rules_foreign_cc//:workspace_definitions.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies()

load("//:load.bzl",
    "load_eigen",
    "load_libpng",
    "load_openblas",
    "load_libtiff",
    "load_zlib",
)
load_eigen(use_cmake=True)
load_libpng(use_cmake=True)
load_libtiff(use_cmake=True)
load_openblas(use_cmake=True)
load_zlib()

# # OpenCV 4 source code repository.
# http_archive(
#     name = "opencv4",
#     build_file_content = all_content,
#     strip_prefix = "opencv-4.0.1",
#     urls = ["https://github.com/opencv/opencv/archive/4.0.1.tar.gz"],
# )

###############################################################################
# Go dependencies.
###############################################################################

# Go rules.
# http_archive(
#     name = "io_bazel_rules_go",
#     sha256 = "492c3ac68ed9dcf527a07e6a1b2dcbf199c6bf8b35517951467ac32e421c06c1",
#     urls = ["https://github.com/bazelbuild/rules_go/releases/download/0.17.0/rules_go-0.17.0.tar.gz"],
# )

# load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

# go_rules_dependencies()

# go_register_toolchains()

# # Gazelle, for generating Go deps.
# http_archive(
#     name = "bazel_gazelle",
#     sha256 = "7949fc6cc17b5b191103e97481cf8889217263acf52e00b560683413af204fcb",
#     urls = ["https://github.com/bazelbuild/bazel-gazelle/releases/download/0.16.0/bazel-gazelle-0.16.0.tar.gz"],
# )

###############################################################################
# Python dependencies.
###############################################################################
