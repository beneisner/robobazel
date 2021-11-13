load("@rules_perl//perl:deps.bzl", "perl_register_toolchains", "perl_rules_dependencies")

def perl_setup():
    perl_rules_dependencies()
    perl_register_toolchains()
