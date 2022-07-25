FROM python:3.8-bullseye
RUN pip3 install atheris

COPY . /bistring
WORKDIR /bistring
RUN python3 -m pip install ./python/ && chmod +x fuzz/fuzz_normalizer.py