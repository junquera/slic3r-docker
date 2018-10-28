#parent image
FROM ubuntu

ENV HOME /root
WORKDIR /root

COPY compile /root/compile
RUN chmod +x /root/compile

#update and install libreoffice
RUN apt-get update
RUN apt-get install -y build-essential libgtk2.0-dev libwxgtk3.0-dev libwx-perl libmodule-build-perl git cpanminus libextutils-cppguess-perl libboost-all-dev libxmu-dev liblocal-lib-perl wx-common libopengl-perl libwx-glcanvas-perl libtbb-dev libxmu-dev freeglut3-dev libwxgtk-media3.0-dev libboost-thread-dev libboost-system-dev libboost-filesystem-dev libcurl4-openssl-dev
# slic3r-prusa
RUN /root/compile "/slic3r" "/tmp" ""

# Una vez instalado, añadimos al PATH
ENV PATH="/slic3r:${PATH}"

#set on launch script
COPY  execute.sh /root/execute.sh
RUN chmod +x /root/execute.sh

RUN mkdir -d /files
# Al hacer docker run se ejecuta esto
ENTRYPOINT /root/execute.sh
