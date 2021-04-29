# arm-embedded-ci
## Description
Contains the Dockerfile for the [arm-embedded-ci](https://hub.docker.com/repository/docker/jconstam/arm-embedded-ci/builds) container on Docker Hub.

A collection of tools for managing continuous integration of a C/C++ embedded ARM project.

## Tools
|Tool Name|Package Manager|Package Name|Use|
|:-|:-|:-|:-|
|ARM GCC and libraries|apt|`arm-none-eabi-gcc`<br/>`libnewlib-arm-none-eabi`|Compile binary for target processor|
|CMake|apt|`cmake`|Build system for C/C++.|
|ceedling|gem|`ceedling`|C unit test framework.|
|Robot Framework|pip|`robotframework`|Testing framework.|
|gcovr|apt|`gcovr`|Code coverage report generation.|
|doxygen|apt|`doxygen`<br/>`graphviz`|Automated code documentation/diagram generation.|
|cppcheck|apt|`cppcheck`|C/C++ static analysis.|
|valgrind|apt|`valgrind`|C/C++ runtime analysis (primarily checking for memory leaks).|
|uncrustify|apt|`uncrustify`|C/C++ source code beautifier.|
|sloccount|apt|`sloccount`|Lines-of-Code counter.|
|fpvgcc|pip|`fpvgcc`|Analysis of GCC MAP files.|
|yattag|pip|`yattag`|Simple generation of HTML documents in Python.|
|pytz|pip|`pytz`|Time zone management in Python.|
|Python3|apt|`python3`<br/>`python3-pip`|Scripting and testing.|
|Ruby|apt|`ruby-dev`|Dependency of ceedling.|
