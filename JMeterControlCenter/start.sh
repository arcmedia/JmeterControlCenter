./manage.py makemigrations && \
	./manage.py migrate && \
	./manage.py loaddata fixtures/initial_data.json

python ./manage.py runserver 0.0.0.0:8888