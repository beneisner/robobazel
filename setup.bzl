load("//third_party/openssl:setup.bzl", _openssl_setup = "openssl_setup")
load("//third_party/perl:setup.bzl", _perl_setup = "perl_setup")
load("//third_party/python:setup.bzl", _python_setup = "python_setup")
load("//third_party/rules_foreign_cc:setup.bzl", _rules_foreign_cc_setup = "rules_foreign_cc_setup")
load("//third_party/rules_python:setup.bzl", _rules_python_setup = "rules_python_setup")
load("//third_party/zlib:setup.bzl", _zlib_setup = "zlib_setup")

openssl_setup = _openssl_setup
perl_setup = _perl_setup
python_setup = _python_setup
rules_foreign_cc_setup = _rules_foreign_cc_setup
rules_python_setup = _rules_python_setup
zlib_setup = _zlib_setup
