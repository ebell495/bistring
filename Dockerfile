FROM python:3.8-bullseye
RUN pip3 install atheris

COPY . /bistring
WORKDIR /bistring
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install python3.8-dev -y
RUN python3 -m pip install -r requirements.txt
RUN python3 -m pip install . && chmod +x fuzz/fuzz.py