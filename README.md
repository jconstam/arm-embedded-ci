# arm-embedded-ci
## Description
Contains the Dockerfile for the [arm-embedded-ci](https://hub.docker.com/repository/docker/jconstam/arm-embedded-ci/builds) container on Docker Hub.

A collection of tools for managing continuous integration of a C/C++ embedded ARM project.

## Tools

The Mongoose OS configuration tool `mos` is installed from its private package repo.
The AWS Command Line tool `aws` is installed from the zip file provided by Amazon.

### Aptitude Packages

- `tzdata`
- `build-essential`
- `gcc-arm-none-eabi`
- `libnewlib-arm-none-eabi`
- `cmake`
- `python3`
- `python3-pip`
- `ruby-dev`
- `gcovr`
- `doxygen`
- `graphviz`
- `cppcheck`
- `valgrind`
- `uncrustify`
- `sloccount`
- `procmail`
- `bc`
- `uuid-dev`
- `pandoc`
- `nmap`
- `net-tools`
- `python3-easygui`
- `clang-tidy`
- `software-properties-common`
- `zip`
- `unzip`
- `shellcheck`

### Gem Packages

- `ceedling`

### Pip Packages

- `fpvgcc`
- `yattag`
- `pytz`
- `junit2html`
- `flake8`
  - Temporarily fixed to v4.0.1 due to an incompatibility in `flake8-html`
- `flake8-html`
- `clang-html`
- `robotframework`
- `robotframework-tidy`
- `pyyaml`
- `python-dateutil`
- `websocket-client`
- `pythonping`
- `pytest`
- `pytest-html`
- `pytest-cov`
- `crcmod`
- `pyserial`
- `pytz`
- `influxdb-client`
- `jsonschema`
