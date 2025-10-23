vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Sc1pex/httc
    REF v0.3.2
    SHA512 81cb4d4460b79fb601be3d80edafcf4953ea3e5749a6e09988be2812735184a3098405ac1118671c9bdf4f46158ef77ba7f433d2a56590dabac3469cb5d5bc74
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DHTTC_BUILD_TESTS=OFF
        -DHTTC_BUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()
