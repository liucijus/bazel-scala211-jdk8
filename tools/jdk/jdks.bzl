load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def jdk_repositories():
    http_archive(
        name = "jdk8_linux",
        build_file = "@local_jdk//:BUILD.bazel",
        sha256 = "2b59b5282ff32bce7abba8ad6b9fde34c15a98f949ad8ae43e789bbd78fc8862",
        strip_prefix = "jdk8u252-b09",
        urls = [
            "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u252-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u252b09.tar.gz",
        ],
    )

    http_archive(
        name = "jdk8_macos",
        build_file = "@local_jdk//:BUILD.bazel",
        sha256 = "3c41691278831d367e44482e8d495e50c08b4e61fee041661edcfac0585e3a2a",
        strip_prefix = "jdk8u252-b09",
        urls = [
            "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u252-b09.1/OpenJDK8U-jdk_x64_mac_hotspot_8u252b09.tar.gz",
        ],
    )

    http_archive(
        name = "jdk11_linux",
        build_file = "@local_jdk//:BUILD.bazel",
        sha256 = "ee60304d782c9d5654bf1a6b3f38c683921c1711045e1db94525a51b7024a2ca",
        strip_prefix = "jdk-11.0.7+10",
        urls = [
            "https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.7%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.7_10.tar.gz",
        ],
    )

    http_archive(
        name = "jdk11_macos",
        build_file = "@local_jdk//:BUILD.bazel",
        sha256 = "0ab1e15e8bd1916423960e91b932d2b17f4c15b02dbdf9fa30e9423280d9e5cc",
        strip_prefix = "jdk-11.0.7+10",
        urls = [
            "https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.7%2B10/OpenJDK11U-jdk_x64_mac_hotspot_11.0.7_10.tar.gz",
        ],
    )
