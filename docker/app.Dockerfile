FROM python 
COPY . /home/app 
RUN pip install "django<2" psycopg2
EXPOSE 8000
ENTRYPOINT python /home/app/manage.py migrate  && python /home/app/manage.py runserver 0.0.0.0:8000