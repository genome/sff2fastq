cmake_minimum_required(VERSION 2.8)

set(SOURCES
    endian.h
    sff.h
    main.c
    sff.c
)

set(EXECUTABLE_NAME sff2fastq)
add_executable(${EXECUTABLE_NAME} ${SOURCES})

#target_link_libraries(${EXECUTABLE_NAME} bedutil fileformats ${Boost_LIBRARIES})
set_target_properties(${EXECUTABLE_NAME} PROPERTIES PACKAGE_OUTPUT_NAME ${EXECUTABLE_NAME}${EXE_VERSION_SUFFIX})
install(TARGETS ${EXECUTABLE_NAME} DESTINATION bin/)
