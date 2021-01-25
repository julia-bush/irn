FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime
RUN apt update -y && apt install git -y && apt install build-essential -y
WORKDIR /app/
RUN pip install torch==1.7.1+cu101 torchvision==0.8.2+cu101 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install cython  # required prior to requirements.txt to build custom git repo (pydensecrf)
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY misc/ misc/
COPY net/ net/
COPY step/ step/
COPY voc12/ voc12/
COPY run_sample.py .