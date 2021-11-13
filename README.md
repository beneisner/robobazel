# robobazel
Robobazel: Bazel monorepo template for robotics, with common dependencies included.

Current structure:
* Put external dependencies in third_party/
* For each dependency, create 3-4 files:
    * BUILD.bazel (empty)
    * BUILD.<DEP>.bazel: The rules for building the dependency.
    * repositories.bzl: The repositories for building the depndency. Include transitive dependencies.
    * setup.bzl: Transitive dependencies' setups. And any other things that need setting up.