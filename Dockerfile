FROM ubuntu:18.04
MAINTAINER http://www.wilmermoina.com

COPY ffmpeg-install.sh ffmpeg-install.sh

RUN chmod +x ffmpeg-install.sh && sync && ./ffmpeg-install.sh 

USER app 
WORKDIR /home/video
CMD bash
