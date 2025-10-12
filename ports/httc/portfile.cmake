vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Sc1pex/httc
    REF v0.3.1
    SHA512 31c8852ec9ebd0ca4abbf835725269dad0be09e33552a93c2848e063c1a608aa50128d39e814813bc2c03cf6a62952cace8b64dc082eafe076273352617654b7
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DHTTC_BUILD_TESTS=OFF
        -DHTTC_BUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()
