vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Sc1pex/httc
    REF v0.2.0
    SHA512 53dd7ad302c219e5ff9ef18e5b17330ee90861484a7f2eb8dbfd6fbc59fcbd977555342d02ba14554895886fec6fb3ce37569997742ee96687b17711a8a0e32d
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DHTTC_BUILD_TESTS=OFF
        -DHTTC_BUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()
