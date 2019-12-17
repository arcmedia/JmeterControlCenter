FROM python:3.6-stretch

RUN apt-get update && \
	git clone https://github.com/innogames/JMeter-Control-Center.git
	
EXPOSE 8888/tcp
	
WORKDIR JMeter-Control-Center

RUN pip install -r requirements.txt && \
	apt-get install python-matplotlib -y && \
	apt-get install python-tk -y && \
	apt-get install -y netcat && \
	chmod 755 ./manage.py && \
	touch ./logs/main_debug.log

COPY ./settings.py ./jltc/settings.py
COPY ./start.sh ./start.sh
COPY ./wait-for.sh ./wait-for.sh

RUN chmod 777 ./wait-for.sh
RUN chmod 777 ./start.sh
