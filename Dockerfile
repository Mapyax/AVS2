FROM ubuntu
COPY 2.py /2.py
COPY hello.txt /hello.txt
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get install -y python3
CMD ["python3", "2.py", "hello.txt"]
