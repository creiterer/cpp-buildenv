FROM debian:sid-slim

# see https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=863199 
# for the reason why the following command is necessary
RUN mkdir -p /usr/share/man/man1
RUN apt update && apt install -y \
# build stuff
make \
cmake \
meson \
ninja-build \
# c/c++ stuff
gcc \
clang-7 \
clang-tidy-7 \
# needed for ANTLR (https://github.com/antlr/antlr4)
default-jre \
uuid-dev \
# misc stuff
git \
curl \
vim \
&& rm -rf /var/lib/apt/lists/*
