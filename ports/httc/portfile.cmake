vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Sc1pex/httc
    REF v0.1.0
    SHA512 c2f6e4b0ecbfca05c959e25993d58adeee9d56295ff385bd0cb18e6809657fe4a6a0b14d1df051c895e1fba05f5a4f049793640da22a24c1015604d8e8a1f759
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DHTTC_BUILD_TESTS=OFF
        -DHTTC_BUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()
