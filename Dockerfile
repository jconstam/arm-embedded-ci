# Download base image Ubuntu Linux 20.04
FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="jconstam@gmail.com"
LABEL version="1.0"
LABEL description="A collection of tools for managing continuous integration of a C/C++ embedded ARM project."

# Add volume for the code repository
WORKDIR /repo
VOLUME ["/repo"]

# Install packages from apt
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q --no-install-recommends \
        tzdata \
        build-essential \
        gcc-arm-none-eabi \
        libnewlib-arm-none-eabi \
        cmake \
        python3 \
        python3-pip \
        ruby-dev \
        gcovr \
        doxygen \
        graphviz \
        cppcheck \
        valgrind \
        uncrustify \
        sloccount && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install packages from gem
RUN gem install \
    ceedling

# Install packages from pip
RUN pip3 install \
    fpvgcc \
    yattag \
    pytz
