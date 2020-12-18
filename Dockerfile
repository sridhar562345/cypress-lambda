FROM amazon/aws-lambda-nodejs:12
ENV HOME=/home/sbx_user1051
USER root
RUN yum install -y xorg-x11-server-Xvfb gtk2-devel gtk3-devel libnotify-devel GConf2 nss libXScrnSaver alsa-lib
RUN mkdir -p /home/workspace
WORKDIR /home/workspace
COPY . .
RUN pwd
RUN ls
RUN npm install
RUN ls
USER sbx_user1051
CMD [ "/home/workspace/index.handler" ]