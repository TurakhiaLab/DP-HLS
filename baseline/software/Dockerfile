FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    g++-11 \
    cmake \
    git \
    wget \
    curl \
    python3 \
    python3-pip \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    libcurl4-openssl-dev \
    pkg-config \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 100

WORKDIR /opt
RUN git clone --branch 3.3.0 https://github.com/seqan/seqan3.git

RUN git clone https://github.com/xxsds/sdsl-lite.git && \
    cd sdsl-lite && mkdir build && cd build && \
    cmake .. -DCMAKE_BUILD_TYPE=Release && \
    make -j && make install

RUN git clone https://github.com/lh3/minimap2.git && \
    cd minimap2 && make -j

WORKDIR /workspace

ENV SEQAN3_PATH=/opt/seqan3
ENV SDSL_PATH=/usr/local/include
ENV CEREAL_PATH=/opt/seqan3/submodules/cereal/include
ENV MINIMAP2_PATH=/opt/minimap2

ENV PATH="${MINIMAP2_PATH}:${PATH}"

RUN mkdir -p /workspace/baseline

CMD ["/bin/bash"]

