FROM ubuntu:xenial

ADD baseInstall.sh /baseInstall.sh
RUN bash /baseInstall.sh && rm /baseInstall.sh

ADD php56.sh /php56.sh
RUN bash /php56.sh && rm /php56.sh

ADD php71.sh /php71.sh
RUN bash /php71.sh && rm /php71.sh

ADD toolsInstall.sh /toolsInstall.sh
RUN bash /toolsInstall.sh && rm /toolsInstall.sh

RUN mkdir /home/workspace
VOLUME ["/home/workspace"]

