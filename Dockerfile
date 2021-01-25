FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime
RUN apt update -y && apt install git -y && apt install build-essential -y
