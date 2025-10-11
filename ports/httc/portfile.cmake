vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Sc1pex/httc
    REF v0.3.0
    SHA512 bb451c2785b53445da294eeafbef74aeb8eee5cd6ab37b9342e4539787cdf85ab7c36fcd201725819bbb1135b73c8551f5975da46ec8d0d1dc15e3ea8a493009
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DHTTC_BUILD_TESTS=OFF
        -DHTTC_BUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()
