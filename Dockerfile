FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime
RUN apt update -y && apt install git -y && apt install build-essential -y
WORKDIR /irn/
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install torch==1.6.0+cu101 torchvision==0.7.0+cu101 -f https://download.pytorch.org/whl/torch_stable.html