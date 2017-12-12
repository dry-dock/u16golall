FROM drydock/u16all:master

ADD . /u16golall

RUN /u16golall/install.sh
