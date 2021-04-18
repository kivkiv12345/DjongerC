FROM python:3
ENV PYTHONUNBUFFERED 1

RUN mkdir /DjongerC
WORKDIR /DjongerC

COPY . /DjongerC/

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install -r requirements.txt
