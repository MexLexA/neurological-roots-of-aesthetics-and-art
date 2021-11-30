#FROM python:3.8.6-buster
FROM nvcr.io/nvidia/tensorflow:20.10-tf1-py3

#FROM tensorflow/tensrflow:1.14.0-gpu-py3
#ARG BASE_IMAGE=nvcr.io/nvidia/tensorflow:20.10-tf1-py3
#FROM $BASE_IMAGE

COPY neurological-roots-of-aesthetics-and-art /neurological-roots-of-aesthetics-and-art
COPY raw_data/pickle.pkl /pickle.pkl
COPY requirements.txt /requirements.txt


RUN pip install --upgrade pip
#RUN pip install -r requirements.txt


#RUN pip install scipy==1.3.3
#RUN pip install requests==2.22.0
#RUN pip install Pillow==6.2.1
#RUN pip install h5py==2.9.0
#RUN pip install imageio==2.9.0
#RUN pip install imageio-ffmpeg==0.4.2
#RUN pip install tqdm==4.49.0

#CMD ["python", "./generator.py"]


#CMD uvicorn api.fast:app --host 0.0.0.0

CMD uvicorn api.fast:app --host 0.0.0.0 --port $PQRT
