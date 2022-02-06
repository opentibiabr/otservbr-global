# Stage 1: Download all dependencies
FROM ubuntu:20.04 AS dependencies

# Stage 1.1: Setup kitware repository
## According to: https://apt.kitware.com/
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends gpg wget ca-certificates
RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
RUN echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ focal main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null
RUN apt-get update && apt-get install kitware-archive-keyring
RUN rm /usr/share/keyrings/kitware-archive-keyring.gpg

# Stage 1.2: Install dependencies
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends cmake git build-essential curl zip unzip tar pkg-config ninja-build libluajit-5.1-dev

WORKDIR /opt
RUN git clone https://github.com/microsoft/vcpkg --depth=1
RUN ./vcpkg/bootstrap-vcpkg.sh

WORKDIR /opt/vcpkg
COPY vcpkg.json /opt/vcpkg/
RUN VCPKG_FORCE_SYSTEM_BINARIES=1 /opt/vcpkg/vcpkg --feature-flags=binarycaching,manifests,versions install

# Stage 2: create build
FROM dependencies AS build

COPY cmake /srv/cmake
COPY CMakeLists.txt vcpkg.json /srv/
COPY src /srv/src

WORKDIR /srv/build

RUN VCPKG_FORCE_SYSTEM_BINARIES=1 cmake -DCMAKE_TOOLCHAIN_FILE=/opt/vcpkg/scripts/buildsystems/vcpkg.cmake .. && make -j`nproc`

# Stage 3: load data and execute
FROM build

COPY --from=build /srv/build/bin/otbr /bin/otbr
COPY LICENSE *.sql key.pem /otbr/
COPY data /otbr/data
COPY config.lua.dist /otbr/config.lua

WORKDIR /otbr

RUN sed -i '/mysqlHost = .*$/c\mysqlHost = "mysql"' config.lua \
  && sed -i '/mysqlUser = .*$/c\mysqlUser = "otserver"' config.lua \
  && sed -i '/mysqlPass = .*$/c\mysqlPass = "otserver"' config.lua \
  && sed -i '/mysqlDatabase = .*$/c\mysqlDatabase = "otserver"' config.lua \
  && unzip -o data/world/world.zip -d data/world/

VOLUME /otbr

ENTRYPOINT ["/bin/otbr"]

