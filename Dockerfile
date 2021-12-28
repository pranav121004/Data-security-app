FROM python:3.8

WORKDIR /secure
COPY requirements.txt .

RUN pip install -r requirements.txt
COPY ./secure ./secure
RUN curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc |  apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" |  tee /etc/apt/sources.list.d/mongodb-org-4.4.list

RUN  apt update -y
RUN  apt install mongodb-org -y
#RUN  pip3 install flask_pymongo


CMD ["python","./secure/app.py"]

