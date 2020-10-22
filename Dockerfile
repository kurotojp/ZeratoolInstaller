FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt -y upgrade
RUN apt install -y git
RUN apt install -y sudo
RUN git clone https://github.com/ChrisTheCoolHut/Zeratool
RUN sudo apt install -y python2.7
#RUN sudo dpkg --add-architecture i386
#RUN sudo apt install libc6:i386 libstdc++6:i386 -y
RUN sudo apt install ccache lib32z1 libssl-dev wget build-essential rubygems-integration ruby-dev rubygems libffi-dev zlib1g-dev g++ -y
#RUN wget https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tar.xz
#RUN tar -Jxf Python-2.7.10.tar.xz
#RUN ls Python-2.7.10
#RUN ./Python-2.7.10/configure --prefix=/usr/local/python2 --with-ensurepip
#RUN sudo apt install -y openssl
#RUN make 
#RUN make install
RUN sudo apt install python-dev -y
RUN sudo gem install one_gadget
RUN wget http://bootstrap.pypa.io/get-pip.py
RUN python2 get-pip.py
RUN pip2 install importlib-metadata==0.23
RUN pip2 install unicorn==1.0.2rc3
RUN pip2 install pluggy==0.13.1  
#RUN pip2 install aim 
RUN pip2 install PyYAML==3.12
RUN pip2 install paramiko==2.4.2
RUN pip2 install future==0.16.0 
RUN pip2 install ana==0.05 
RUN pip2 install pycparser==2.18 
RUN pip2 install arp==1.0 
RUN pip2 install IPython==5.0 
RUN pip2 install psutil==5.4.5
RUN pip2 install r2pipe==1.4.2 
RUN pip2 install timeout_decorator==0.4.0
RUN pip2 install ropper==1.11.3
RUN pip2 install pwn==1.0
RUN pip2 install pwntools==3.13.0
RUN pip2 install cffi==1.7.0 --use-feature=2020-resolver
RUN pip2 install angr==7.8.2.21 
RUN git clone https://github.com/radare/radare2.git
RUN sudo chmod -R +x ./radare2/sys/install.sh
RUN sudo ./radare2/sys/install.sh
RUN cp -r radare2/ Zeratool/
RUN env PWNLIB_NOTERM=true
#RUN export TERM=linux
#RUN export TERMINFO=/etc/terminfo
#RUN python2 /Zeratool/zeratool.py
