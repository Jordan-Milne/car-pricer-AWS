FROM python:3.6-slim
COPY ./app.py /deploy/
COPY ./requirements.txt /deploy/
COPY ./pipe.pkl /deploy/
COPY ./cars1.csv /deploy/
COPY ./stylesheet.css  /deploy/templates/
COPY ./result.html  /deploy/templates/
COPY ./indexx.html  /deploy/templates/
WORKDIR /deploy/
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT ["python", "app.py"]