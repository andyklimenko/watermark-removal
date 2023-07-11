FROM tensorflow/tensorflow:1.15.0-py3-jupyter
LABEL authors="andy klymenko"

RUN apt update
RUN apt install -y git libgl1

RUN python -m pip install --upgrade pip setuptools
RUN pip install git+https://github.com/JiahuiYu/neuralgym Pillow opencv-python

RUN mkdir in
RUN mkdir out

COPY . .

ENTRYPOINT python main.py --image ./in/in.jpg --output ./out/out.jpg --checkpoint_dir model/ --watermark_type istock