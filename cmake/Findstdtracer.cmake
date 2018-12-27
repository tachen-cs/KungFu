INCLUDE(ExternalProject)

SET(STDTRACER_GIT_URL https://github.com/lgarithm/stdtracer.git
    CACHE STRING "URL for clone stdtensor")

SET(PREFIX ${CMAKE_SOURCE_DIR}/3rdparty)

EXTERNALPROJECT_ADD(stdtracer-repo
                    GIT_REPOSITORY
                    ${STDTRACER_GIT_URL}
                    GIT_TAG
                    v0.1.0
                    PREFIX
                    ${PREFIX}
                    CMAKE_ARGS
                    -DCMAKE_INSTALL_PREFIX=${PREFIX}
                    -DBUILD_TESTS=0
                    -DBUILD_EXAMPLES=0)
