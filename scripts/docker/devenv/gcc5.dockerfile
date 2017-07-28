FROM gcc:5

RUN apt-get -q update && apt-get install -qy \
    git \
    libleveldb-dev \
    libmicrohttpd-dev \
 && rm -rf /var/lib/apt/lists/*

RUN curl -s https://cmake.org/files/v3.9/cmake-3.9.0-Linux-x86_64.tar.gz > cmake.tar.gz \
 && tar xzf cmake.tar.gz -C /usr --strip 1 \
 && rm cmake.tar.gz
