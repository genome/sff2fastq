cmake_minimum_required(VERSION 2.6)

# .deb packaging
set(ARCH "i686")
if(${CMAKE_SIZEOF_VOID_P} MATCHES 8)
    set(ARCH "x86_64")
endif ()

set(DEFAULT_ETC_ALTERNATIVES_PRIORITY 11)

# The format of the description field is a short summary line followed by a
# longer paragraph indented by a single space on each line
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY 
 "a grep-like tool optimized for FASTA and FASTQ files
 'fqgrep' is an approximate sequence pattern matcher for FASTQ/FASTA files.
 One can think of it as being a grep (http://en.wikipedia.org/wiki/Grep)
 and agrep (http://en.wikipedia.org/wiki/Agrep) like tool optimized
 for FASTQ (http://en.wikipedia.org/wiki/FASTQ_format) and FASTA
 (http://en.wikipedia.org/wiki/FASTA_format) files. It can work directly
 on both compressed and uncompressed file types."
)
set(CPACK_PACKAGE_NAME "sff2fastq${EXE_VERSION_SUFFIX}")
set(CPACK_PACKAGE_VENDOR "TGI")
set(CPACK_PACKAGE_VERSION ${FULL_VERSION})
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Indraniel Das <idas@wustl.edu>")
set(CPACK_SYSTEM_NAME "Linux-${ARCH}")
set(CPACK_TOPLEVEL_TAG "Linux-${ARCH}")
set(CPACK_DEBIAN_PACKAGE_SECTION science)
set(CPACK_DEBIAN_PACKAGE_PRIORITY optional)
#set(CPACK_DEBIAN_PACKAGE_REPLACES "sff2fastq0.8)
set(CPACK_DEBIAN_PACKAGE_DEPENDS "libc6 (>= 2.4), libgcc1 (>= 1:4.1.1-21)")
if (CMAKE_BUILD_TYPE MATCHES package)
    set(CPACK_GENERATOR "DEB")
else(CMAKE_BUILD_TYPE MATCHES package)
    set(CPACK_GENERATOR "TGZ")
endif(CMAKE_BUILD_TYPE MATCHES package)

configure_file(debian/postinst.in debian/postinst @ONLY)
configure_file(debian/prerm.in debian/prerm @ONLY)
set(CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA "debian/postinst;debian/prerm")

include(CPack)
