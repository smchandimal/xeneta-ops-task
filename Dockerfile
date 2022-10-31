FROM ubuntu:20.04

COPY ./rates /home/app/rates
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y python3-pip
RUN pip install -U gunicorn
WORKDIR /home/app/rates
RUN pip install -Ur requirements.txt
EXPOSE 3000
CMD [ "sh", "-c", "gunicorn -b :3000 wsgi" ]
