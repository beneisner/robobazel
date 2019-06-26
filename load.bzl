load("//third_party/libpng:load_libpng.bzl", _load_libpng = "load_libpng")
load("//third_party/openblas:load_openblas.bzl", _load_openblas = "load_openblas")
load("//third_party/zlib:load_zlib.bzl", _load_zlib = "load_zlib")
load("//third_party/libtiff:load_libtiff.bzl", _load_libtiff = "load_libtiff")
load("//third_party/eigen:load_eigen.bzl", _load_eigen = "load_eigen")

load_libpng = _load_libpng
load_eigen = _load_eigen
load_libtiff = _load_libtiff
load_openblas = _load_openblas
load_zlib = _load_zlib