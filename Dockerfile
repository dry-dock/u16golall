FROM drydock/u16all:{{%TAG%}}

ADD . /u16golall

RUN /u16golall/install.sh
