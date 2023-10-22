FROM python:3.11.6-bullseye

WORKDIR /usr/app
COPY . .
RUN pip3 install -r ./requirements.txt
EXPOSE 5000
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]
