FROM nvidia/cuda:12.3.2-devel-ubuntu20.04

ENV TZ "Asia/Taipei"
ENV DEBIAN_FRONTEND "noninteractive"
# ENV PATH "$PATH:/usr/local/cuda/bin"
# ENV LD_LIBRARY_PATH "$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
#CMD echo $username
#CMD useradd -rm -d /home/$username -s /bin/bash -g root -G sudo -u 1001 $username && echo "${username}:${userpwd}" | chpasswd
#USER m1105520

USER $username
WORKDIR /home/$username
# CMD echo ${username}

USER root
RUN date
RUN apt update
RUN apt install libpthread-stubs0-dev -y

RUN apt install build-essential -y
RUN apt install vim nano -y
RUN apt install tzdata -y
RUN apt install sudo -y
RUN apt install openssh-server -y
RUN apt install git -y
RUN apt install libomp-dev -y
RUN apt install zip -y
RUN apt install unzip -y
RUN ln -snf /usr/share/zoneinfo/Asia/Taipei /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

RUN echo 'root:password' | chpasswd
RUN echo "Port 22" >> /etc/ssh/sshd_config
RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config


USER $username
# RUN echo $username
# RUN touch /home/$USER/.bashrc
# RUN touch /home/$USER/.profile
# RUN echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64" >> /home/${username}/.bashrc
# RUN echo "export PATH=$PATH:/usr/local/cuda/bin" >> /home/${username}/.bashrc
# RUN echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64" >> /home/${username}/.profile
# RUN echo "export PATH=$PATH:/usr/local/cuda/bin" >> /home/${username}/.profile

EXPOSE 22
#CMD ["/usr/sbin/sshd", "-D"]
#ENTRYPOINT service ssh restart && bash
#CMD /bin/bash
#RUN cd /

#ADD jdk-8u152-linux-x64.tar.gz /

#RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz
#RUN tar zxvf apache-tomcat-7.0.82.tar.gz

#ENV TZ=Asia/Taipei
#ENV DEBIAN_FRONTEND=noninteractive
#ENV PATH=$PATH:/jdk1.8.0_152/bin
#CMD ["/apache-tomcat-7.0.82/bin/catalina.sh", "run"]
