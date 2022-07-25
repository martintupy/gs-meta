FROM python

ARG version

RUN apt update && apt install fzf

COPY dist/gs-meta-${version}.tar.gz gs-meta.tar.gz

RUN pip3 install gs-meta.tar.gz
