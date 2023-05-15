FROM python:3.10.9-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /𓆩 𝜩 𐌱𐍈Ƭ𐌽𐌹𐌽ᏃÆ 𝜩 𓆪
WORKDIR /𓆩 𝜩 𐌱𐍈Ƭ𐌽𐌹𐌽ᏃÆ 𝜩 𓆪
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
