load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_glog():
    http_archive(
        name = "com_github_google_glog",
        urls = [ "https://github.com/google/glog/archive/master.zip" ],
        strip_prefix = "glog-master",
        workspace_file_content = "",
    )
