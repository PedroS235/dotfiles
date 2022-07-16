return {
    cmd = {
        "clangd",
        "-I=/opt/ros/humble/include/",
        "--include-directory=/opt/ros/humble/include/",
    },
    root_dir = {
        root_pattern(
            ".clangd",
            ".ccls",
            ".clang-tidy",
            ".clang-format",
            "compile_commands.json",
            "compile_flags.txt",
            "configure.ac",
            ".git"
        ),
    },
}
