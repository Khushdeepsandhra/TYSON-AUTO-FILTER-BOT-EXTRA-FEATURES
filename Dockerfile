FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /TYSON-AUTO-FILTER-BOT-EXTRA-FEATURES
WORKDIR /TYSON-AUTO-FILTER-BOT-EXTRA-FEATURES
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
