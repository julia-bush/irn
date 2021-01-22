FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime
RUN apt update -y && apt install git -y && apt install build-essential -y
WORKDIR /app/
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY misc/ misc/
COPY net/ net/
COPY result/ result/
COPY sess/ sess/
COPY step/ step/
COPY voc12/ voc12/
COPY run_sample.py .