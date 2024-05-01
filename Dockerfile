# Download base image Ubuntu Linux 20.04
FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="jconstam@gmail.com"
LABEL version="2.2"
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
    sloccount \
    procmail \
    bc \
    uuid-dev \
    pandoc \
    nmap \
    net-tools \
    python3-easygui \
    clang-tidy \
    software-properties-common \
    zip \
    unzip \
    shellcheck && \
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
    pytz \
    junit2html \
    flake8==4.0.1 \
    flake8-html \
    clang-html \
    robotframework \
    robotframework-tidy \
    robotframework-reportportal \
    pyyaml \
    python-dateutil \
    websocket-client \
    pythonping \
    pytest \
    pytest-html \
    pytest-cov \
    crcmod \
    pyserial \
    pytz \
    influxdb-client \
    jsonschema \
    validators \
    zeroconf \
    virtualenv

# Add Mongose OS Package Repository
RUN add-apt-repository ppa:mongoose-os/mos
# Install mos
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q mos

# Initialize mos
RUN mkdir -p /root/.mos
RUN echo '{}' > /root/.mos/state.json
RUN mos version

# Setup AWS CLI
ADD https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip ./awscliv2.zip
RUN unzip ./awscliv2.zip
RUN ./aws/install
RUN rm -rf ./aws
RUN rm -rf ./awscliv2.zip

# Set permission for pythonping to be run by a user
RUN setcap cap_net_raw+ep $(readlink -f `which python3`)
