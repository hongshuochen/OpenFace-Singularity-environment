FROM ubuntu:18.04

RUN apt-get update \
&& apt-get install -y -q build-essential g++-8 cmake libopenblas-dev git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev wget unzip libboost-all-dev


RUN wget https://github.com/opencv/opencv/archive/4.1.0.zip \
&& unzip 4.1.0.zip \
&& cd opencv-4.1.0 \
&& mkdir build \
&& cd build \
&& cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_TIFF=ON -D WITH_TBB=ON .. \
&& make -j2 \
&& make install \
&& cd ../.. \
&& rm -rf opencv-4.1.0 \
&& rm 4.1.0.zip

RUN wget http://dlib.net/files/dlib-19.13.tar.bz2 \
&& tar xf dlib-19.13.tar.bz2 \
&& cd dlib-19.13 \
&& mkdir build \
&& cd build \
&& cmake .. \
&& cmake --build . --config Release \
&& make install \
&& ldconfig \
&& cd ../.. \
&& rm dlib-19.13.tar.bz2