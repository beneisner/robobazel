load("//third_party/openssl:repositories.bzl", _openssl_repositories = "openssl_repositories")
load("//third_party/perl:repositories.bzl", _perl_repositories = "perl_repositories")
load("//third_party/python:repositories.bzl", _python_repositories = "python_repositories")
load("//third_party/rules_foreign_cc:repositories.bzl", _rules_foreign_cc_repositories = "rules_foreign_cc_repositories")
load("//third_party/rules_python:repositories.bzl", _rules_python_repositories = "rules_python_repositories")
load("//third_party/zlib:repositories.bzl", _zlib_repositories = "zlib_repositories")

openssl_repositories = _openssl_repositories
perl_repositories = _perl_repositories
python_repositories = _python_repositories
rules_foreign_cc_repositories = _rules_foreign_cc_repositories
rules_python_repositories = _rules_python_repositories
zlib_repositories = _zlib_repositories
