load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")


git_repository(
    name = "io_bazel_rules_python",
    remote = "https://github.com/ltekieli/rules_python.git",
    # Original
    commit = "cc4cbf2f042695f4d1d4198c22459b3dbe7f8e43",
    # Fixed
    # commit = "ffe5d42a9ad2d809fb26661db5a3862fa0ac0596",
)

load("@io_bazel_rules_python//python:pip.bzl", "pip_repositories")
pip_repositories()


load("@io_bazel_rules_python//python:pip.bzl", "pip_import")
pip_import(
   name = "python_deps",
   requirements = "//:requirements.txt",
)


load("@python_deps//:requirements.bzl", "pip_install")
pip_install()
