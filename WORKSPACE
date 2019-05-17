load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# proto_library, cc_proto_library, and java_proto_library rules implicitly
# depend on @com_google_protobuf for protoc and proto runtimes.
# This statement defines the @com_google_protobuf repo.
http_archive(
    name = "com_google_protobuf",
    sha256 = "92f528f2f2b42b40c62fbced5fb34f4d6f4d80f79081e140794aad24df7fc1d0",
    strip_prefix = "protobuf-3.6.0.1",
    urls = ["https://github.com/google/protobuf/archive/v3.6.0.1.zip"],
)

http_archive(
    name = "com_github_tencent_rapidjson",
    build_file = "//:third_party/rapidjson.BUILD",
    sha256 = "8e00c38829d6785a2dfb951bb87c6974fa07dfe488aa5b25deec4b8bc0f6a3ab",
    strip_prefix = "rapidjson-1.1.0",
    url = "https://github.com/Tencent/rapidjson/archive/v1.1.0.zip",
)
