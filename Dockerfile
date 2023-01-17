FROM python:3.9

WORKDIR /user/app/

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

#EXPOSE 5000

COPY app.py .

CMD ["flask", "run", "-m", "--host=0.0.0.0"]
