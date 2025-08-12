FROM gcc:15.1

WORKDIR /opt
RUN apt update && \
    apt install -y ninja-build && \
    rm -rf /var/lib/apt/lists/* && \
    wget https://github.com/Kitware/CMake/releases/download/v4.1.0-rc4/cmake-4.1.0-rc4-linux-x86_64.tar.gz && \
    tar -xzvf cmake-4.1.0-rc4-linux-x86_64.tar.gz && \
    rm cmake-4.1.0-rc4-linux-x86_64.tar.gz && \
    ln -s /opt/cmake-4.1.0-rc4-linux-x86_64/bin/* /usr/local/bin

RUN cmake --version && gcc --version

WORKDIR /work
